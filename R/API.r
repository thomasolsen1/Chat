#' Set API Key
#'
#' This function sets the API key for the CHATGPT_KEY environment variable.
#' If no key is provided and the environment variable is not set, it prompts the user to enter the API key.
#'
#' @param key The API key to be set. If not provided, the user will be prompted to enter it.
#' @param env_var The environment variable to set the API key to. Default is "CHATGPT_KEY".
#'
#' @examples
#' set_api_key("your_api_key_here")
#' set_api_key("your_api_key_here", "MY_ENV_VAR")
#'
#' @importFrom askpass askpass
#' @importFrom mockery mock
#'
#' @export

set_api_key <- function(key = NULL, env_var = "CHATGPT_KEY") {
  # Check if the environment variable is already set
  if (is.null(Sys.getenv(env_var, unset = NA))) {
    # If the key argument is missing, prompt the user to enter it
    if (is.null(key)) {
      key <- askpass::askpass("Please enter your API key")
    }
    # Set the environment variable
    Sys.setenv(env_var = key)
  }
}
