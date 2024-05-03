test_that("Testthat works in set_api_key()", {

  skip_on_cran()

  key <- httr2::secret_decrypt("4UAcFSIHVz8Z4zED1WEj3k65xFBWlJ8dzavRDGG4dz0pBxEOXtvSkLwK6_fZaZqCr94oVtKBD6DQo82vwa2gljJMTw", "AISCREENR_KEY")

  # Set the environment variable
  Sys.setenv(CHATGPT_KEY = key)

  # Call the set_api_key function
  set_api_key()

  # Check that the environment variable was set correctly
  expect_identical(Sys.getenv("CHATGPT_KEY"), key)

})
