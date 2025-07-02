#' Chat with OpenAI's GPT-3.5-turbo model HEJ MED DIG IGEN
#'
#' This function takes a data frame of study details, constructs a prompt for each study, and sends it to OpenAI's GPT-3.5-turbo model for a response.
#' The function returns a tibble with the original study details and the model's response.
#'
#' @param data A data frame containing the study details. Each row should represent a study and must have 'title' and 'abstract' columns.
#' @param prompt A string that will be prepended to the study details to form the prompt for the model.
#' @param model A string specifying the model to use. Default is "gpt-3.5-turbo".
#'
#' @return A tibble with the original study details and the model's response.
#'
#' @import dplyr
#' @export
#'
#' @examples
#' \dontrun{
#' prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
#' loaded_objects <- load("./data/filges2015_dat_modified.rda")
#' data <- get(loaded_objects)
#' chat(data, prompt)
#' }

chat <- function(data, prompt, model = "gpt-3.5-turbo") {
  set_api_key()
  base_url <- "https://api.openai.com/v1"
  api_key <- Sys.getenv("CHATGPT_KEY")

  # Initialize an empty data frame to store the results
  results <- tibble::tibble(Title = character(), StudyID = character(), decision_gpt = character())

  # Loop over each row of the data
  for (i in 1:nrow(data)) {
    # Extract the study details
    study_details <- paste(data[i, "title"], data[i, "abstract"], sep = " ")

    # Create the user message
    user_message <- list(
      list(role = "user", content = paste0(prompt, " ", study_details))
    )

    # Create the request body
    body <- list(model = model,
                 messages = user_message)

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

    # Add a new row to the results tibble
    results <- tibble::add_row(results, Title = as.character(data[i, "title"]), StudyID = as.character(data[i, "studyid"]), decision_gpt = decision_gpt)
  }
return(results)
}
