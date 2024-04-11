test_that("chat returns a dataframe with correct columns", {
  # Define the inputs
  message <- "What is an apple"
  temperature <- 0.5
  model <- "gpt-3.5-turbo-0613"
  
  # Call the function
  result <- chat(message, temperature, model)
  
  # Check that the result is a dataframe
  expect_is(result, "data.frame")
  
  # Check that the dataframe has the correct columns
  expected_cols <- c("Model", "Temperature", "Message", "Response")
  expect_equal(colnames(result), expected_cols)
})
