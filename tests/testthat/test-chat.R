test_that("inclusion_decision_description returns correct string", {
  # Call the function
  result <- inclusion_decision_description()
  
  # Define the expected result
  expected_result <- paste0(
    "If the study should be included for further review, write '1'.",
    "If the study should be excluded, write '0'.",
    "If there is not enough information to make a clear decision, write '1.1'.",
    "If there is no or only a little information in the title and abstract also write '1.1'",
    "When providing the response only provide the numerical decision."
  )
  
  # Check that the result is as expected
  expect_equal(result, expected_result)
})

test_that("chat returns a dataframe with correct columns", {
  # Define the inputs
  data <- data.frame(title = "Study title", abstract = "Study abstract", studyid = "Study ID")
  prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
  temperature <- 0.5
  model <- "gpt-3.5-turbo"
  
  # Call the function
  result <- chat(data, prompt, temperature, model)
  
  
  # Check that the dataframe has the correct columns
  expected_cols <- c("Title", "StudyID", "OpenAIResponse")
  expect_equal(colnames(result), expected_cols)
})