#' Generate the inclusion decision description
#'
#' This function generates a string that describes the decision-making process for including a study in the review.
#' The string is used as a message to the OpenAI API.
#'
#' @return A string that describes the decision-making process.
inclusion_decision_description <- function() {
  paste0(
    "For the given prompt, the AI should respond as follows:",
    "\n- If the text confirms the prompt, respond with '1'.",
    "\n- If the text contradicts the prompt, respond with '0'.",
    "\n- If the text does not provide enough information to confirm or contradict the prompt, respond with '1.1'.",
    "\n- This also applies if the title and abstract provide insufficient information.",
    "\n- The response should only consist of the numerical decision."
  )
}

#' Chat with the OpenAI API
#'
#' This function sends a series of messages to the OpenAI API and returns the API's responses.
#' The messages are generated based on the data provided.
#'
#' @param data A data frame with the data to be used in the messages. Each row represents a study and should have columns for 'title' and 'abstract'.
#' @param prompt A string to be used as the initial prompt in the messages.
#' @param temperature A numeric value to control the randomness of the API's responses.
#' @param model A string specifying the model to be used by the API.
#'
#' @return A data frame with the API's responses. Each row corresponds to a row in the input data and contains the study title, study ID, and the API's response.
#' @importFrom httr2 request req_url_path_append req_auth_bearer_token req_headers req_user_agent req_body_json req_retry req_throttle req_perform
#' @importFrom purrr map simplify
#' @importFrom dplyr bind_rows
#' @export
#' 
#' @examples
#' 
#' prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
#' 
#' loaded_objects <- load("C:/Users/thoma/Desktop/VIVE/filges2015_dat_modified.rda")
#' data <- get(loaded_objects)
#' chat(data, prompt, 0.5, "gpt-3.5-turbo")


chat <- function(data, prompt, temperature, model) {
  set_api_key()
  base_url <- "https://api.openai.com/v1"
  api_key <- Sys.getenv("OPENAI_API_KEY")
  
  results <- purrr::map_dfr(1:nrow(data), function(i) {
    # Extract the study details
    study_details <- paste(data[i, "title"], data[i, "abstract"], sep = " ")
    
    # Create the user message
    user_message <- list(
      list(role = "user", content = paste0(prompt, " ", study_details)),
      list(role = "user", content = inclusion_decision_description())
    )
    
    # Create the request body
    body <- list(model = model,
                 messages = user_message,
                 temperature = temperature)
    
    # Make the request
    req <- httr2::request(base_url)
    resp <-
      req |> 
      httr2::req_url_path_append("chat/completions") |> 
      httr2::req_auth_bearer_token(token = api_key) |> 
      httr2::req_headers("Content-Type" = "application/json") |> 
      httr2::req_user_agent("Thomas Olsen") |> 
      httr2::req_body_json(body) |> 
      httr2::req_retry(max_tries = 4) |> 
      httr2::req_throttle(rate = 15) |> 
      httr2::req_perform() |> 
      httr2::resp_body_json()
    
    # Return the result as a data frame
    data.frame(Title = data[i, "title"], StudyID = data[i, "studyid"], OpenAIResponse = resp$choices[[1]]$message$content)
  })
  
  return(results)
}


#################
# library(usethis); library(roxygen2); library(devtools); library(testthat); library(askpass); library(httr2); library(purrr); library(dplyr); library(magrittr)
