test_that("Testthat works in set_api_key()", {

  skip_on_cran()

  key <- httr2::secret_decrypt("KYmKXac4jBjAlHhMMrUUeQnxQuRSiBPTN6xil22UCY4H7HaEj43nhMIQ3oudBsD0iSFZYrnCv8_VDDpul3khW1TExnxqpad_", "CHAT_KEY")

  # Set the environment variable
  Sys.setenv(CHATGPT_KEY = key)

  # Call the set_api_key function
  set_api_key()

  # Check that the environment variable was set correctly
  expect_identical(Sys.getenv("CHATGPT_KEY"), key)

})