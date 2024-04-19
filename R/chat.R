#' Chat with the OpenAI API
#'
#' This function sends a series of messages to the OpenAI API and returns the API's responses.
#' The messages are generated based on the data provided.
#'
#' @param data A data frame with the data to be used in the messages. Each row represents a study and should have columns for 'title' and 'abstract'.
#' @param prompt A string to be used as the initial prompt in the messages.
#' @param temperature A numeric value to control the randomness of the API's responses.
#' @param model A string specifying the model to be used by the API.
#' @param functions A list of functions to be used in the decision-making process. Default is 'incl_function'.
#' @param function_call_name A list with the name of the function to be called for making the decision. Default is list(name = "inclusion_decision").
#'
#' @return A data frame with the API's responses. Each row corresponds to a row in the input data and contains the study title, study ID, and the API's response.
#' @importFrom httr2 request req_url_path_append req_auth_bearer_token req_headers req_user_agent req_body_json req_retry req_throttle req_perform resp_body_json
#' @importFrom purrr map simplify
#' @importFrom dplyr bind_rows if_else
#' @importFrom tibble tibble add_row
#' @importFrom stringr str_detect
#' @export
#' 
#' @examples
#' 
#' prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
#' 
#' loaded_objects <- load("./data/filges2015_dat_modified.rda")
#' data <- get(loaded_objects)
#' chat(data, prompt, 0.5, "gpt-3.5-turbo-0125")


chat <- function(data, 
  prompt, 
  temperature, 
  model, 
  functions = incl_function,
  function_call_name = list(name = "inclusion_decision")
  ){
  base_url <- "https://api.openai.com/v1"
  api_key <- Sys.getenv("OPENAI_API_KEY")
  
  # Initialize an empty data frame to store the results
  results <- tibble::tibble(Title = character(), StudyID = character(), decision_gpt = character(), decision_binary = numeric())

  # Loop over each row of the data
  for (i in 1:nrow(data)) {
    
    # Extract the study details
    study_details <- paste(data[i, "title"], data[i, "abstract"], sep = " ")

    # Create the user message
    user_message <- list(list(role = "user", content = paste0(prompt, " ", study_details)))

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


    # Extract the decision_gpt from the response
    decision_gpt <- resp$choices[[1]]$message$content

    # Convert the decision to binary
    decision_binary <- as.numeric(if_else(stringr::str_detect(decision_gpt, "1"), 1, 0, missing = NA_real_))

    # Add a new row to the results tibble
    results <- tibble::add_row(results, Title = as.character(data[i, "title"]), StudyID = as.character(data[i, "studyid"]), decision_gpt = decision_gpt, decision_binary = decision_binary)
  }
return(results)
}

inclusion_decision_description <- paste0(
  "If the study should be included for further review, write '1'.",
  "If the study should be excluded, write '0'.",
  "If there is not enough information to make a clear decision, write '1.1'.",
  "If there is no or only a little information in the title and abstract also write '1.1'",
  "When providing the response only provide the numerical decision."
)

incl_function <- list(
  list(
    name = "inclusion_decision",
    description = inclusion_decision_description,
    parameters = list(
      type = "object",
      properties = list(
        decision_gpt = list(
          type = "string",
          items = list(
            type = "string",
            description = "A string of either '1', '0', or '1.1'"
          ),
          description = "List the inclusion decision"
        )
      ),
      required = list("decision_gpt")
    )
  )
)

#################
# library(usethis); library(roxygen2); library(devtools); library(testthat); library(askpass); library(httr2); library(purrr); library(dplyr); library(magrittr)
