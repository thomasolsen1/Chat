#' chat
#'
#' @param message The message sent to OpenAI
#' @param temperature The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use log probability to automatically increase the temperature until certain thresholds are hit. (https://platform.openai.com/docs/api-reference/audio)
#' @param model OpenAI's API models
#'
#' @return A dataframe containing the chosen message, temperature, model and the response from OpenAI's API models
#' @export
#'
#' @examples
#' chat("What is an apple", 0.5, "gpt-3.5-turbo-0613")
#' 
#' @importFrom httr2 request req_url_path_append req_auth_bearer_token req_headers req_user_agent req_body_json req_retry req_throttle req_perform
#' @importFrom purrr map simplify
#' @importFrom dplyr bind_rows
chat <- function(message, temperature, model) {
  user_message <- list(list(role = "user", content = message))
  base_url <- "https://api.openai.com/v1"
  api_key <- get_api_key()
  body <- list(model = model,
               messages = user_message,
               temperature = temperature)
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
    httr2::req_perform()

  openai_chat_response <- resp |> httr2::resp_body_json(simplify = TRUE)
  result <- openai_chat_response$choices$message$content
  return(dplyr::bind_rows(data.frame(Model = model, Temperature = temperature, Message = message, Response = result)))
}
