# This is newer

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
