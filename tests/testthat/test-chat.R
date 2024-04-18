test_that("inclusion_decision_description returns correct string", {
  # Call the function
  result <- inclusion_decision_description()
  
  # Define the expected result
  expected_result <- paste0(
    "For the given prompt, the AI should respond as follows:",
    "\n- If the text confirms the prompt, respond with '1'.",
    "\n- If the text contradicts the prompt, respond with '0'.",
    "\n- If the text does not provide enough information to confirm or contradict the prompt, respond with '1.1'.",
    "\n- This also applies if the title and abstract provide insufficient information.",
    "\n- The response should only consist of the numerical decision."
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