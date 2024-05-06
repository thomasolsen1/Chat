#' Set API Key
#'
#' This function sets the API key for the CHATGPT_KEY environment variable.
#' If the environment variable is not set, it prompts the user to enter the API key.
#'
#' @examples
#' set_api_key()
#'
#' @details
#' The function first checks if the "CHATGPT_KEY" environment variable is set. 
#' If it is not set, it prompts the user to enter the value for "CHATGPT_KEY" and sets the environment variable to the entered value.
#'
#'
#' @export

set_api_key <- function() {
    if (Sys.getenv("CHATGPT_KEY") == "") {
        cat("Please enter the value for CHATGPT_KEY:\n")
        CHATGPT_KEY <- askpass::askpass("Enter CHATGPT_KEY:")
        Sys.setenv(CHATGPT_KEY = CHATGPT_KEY)
    }
}