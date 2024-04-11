
# Generate a mocked API key with 51 characters
mocked_api_key <- paste(rep("x", 51), collapse = "")

# Mock the askpass::askpass function
mockery::mock(askpass::askpass,
     mocked_api_key)

test_that("set_api_key function sets the API key correctly", {
  # Call the set_api_key function
  set_api_key()

  # Check if the length of the environment variable is set correctly
  expect_equal(nchar(Sys.getenv("CHATGPT_KEY")), 51)
})
