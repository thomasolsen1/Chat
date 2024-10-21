# test-set_api_key.R

library(testthat)
library(mockery)

test_that("set_api_key sets the environment variable when not set", {
  # Mock the askpass function to return a predefined value
  mock_askpass <- mock("mocked_api_key")
  stub(set_api_key, "askpass::askpass", mock_askpass)
  
  # Mock the Sys.setenv function
  mock_setenv <- mock()
  stub(set_api_key, "Sys.setenv", mock_setenv)
  
  # Ensure the environment variable is not set
  Sys.unsetenv("CHATGPT_KEY")
  
  # Call the function
  set_api_key()
  
  # Check that askpass was called once
  expect_called(mock_askpass, 1)
  
  # Check that Sys.setenv was called with the correct arguments
  expect_called(mock_setenv, 1)
  expect_args(mock_setenv, 1, CHATGPT_KEY = "mocked_api_key")
})

test_that("set_api_key does not prompt if environment variable is set", {
  # Set the environment variable
  Sys.setenv(CHATGPT_KEY = "existing_api_key")
  
  # Mock the askpass function to ensure it is not called
  mock_askpass <- mock()
  stub(set_api_key, "askpass::askpass", mock_askpass)
  
  # Call the function
  set_api_key()
  
  # Check that askpass was not called
  expect_called(mock_askpass, 0)
  
  # Reset the environment variable
  Sys.unsetenv("CHATGPT_KEY")
})