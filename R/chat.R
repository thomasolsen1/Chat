
#' chat
#'
#' @param message The message sent to OpenAI
#' @param temperature The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use log probability to automatically increase the temperature until certain thresholds are hit. (https://platform.openai.com/docs/api-reference/audio)
#' @param model OpenAI's API models
#'
#' @return A dataframe containing the chosen message, temperature, model and the response from OpenAI's API models
#' @import httr2 tidyverse magrittr purrr dplyr
#' @export
#'
#' @examples
#' chat("What is an apple", 0.5, "gpt-3.5-turbo-0613")

chat <- function(message, temperature, model) {
  user_message <- list(list(role = "user", content = message))
  base_url <- "https://api.openai.com/v1"
  api_key <- Sys.getenv("OPENAI_API_KEY")
  body <- list(model = model,
               messages = user_message,
               temperature = temperature)
  req <- request(base_url)
  resp <-
    req |>
    req_url_path_append("chat/completions") |>
    req_auth_bearer_token(token = api_key) |>
    req_headers("Content-Type" = "application/json") |>
    req_user_agent("Thomas Olsen") |>
    req_body_json(body) |>
    req_retry(max_tries = 4) |>
    req_throttle(rate = 15) |>
    req_perform()

  openai_chat_response <- resp |> resp_body_json(simplifyVector = TRUE)
  result <- openai_chat_response$choices$message$content
  return(data.frame(Model = model, Temperature = temperature, Message = message, Response = result))
}
