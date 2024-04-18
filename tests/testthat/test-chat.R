# Test for inclusion_decision_description function
test_that("inclusion_decision_description returns correct string", {
  expected_string <- paste0(
    "For the given prompt, the AI should respond as follows:",
    "\n- If the text confirms the prompt, respond with '1'.",
    "\n- If the text contradicts the prompt, respond with '0'.",
    "\n- If the text does not provide enough information to confirm or contradict the prompt, respond with '1.1'.",
    "\n- This also applies if the title and abstract provide insufficient information.",
    "\n- The response should only consist of the numerical decision."
  )
  expect_equal(inclusion_decision_description(), expected_string)
})

# Test for chat function
# Please note that this is a simple test and might need to be adjusted based on the actual data and API responses
test_that("chat returns a data frame with correct columns", {
  data <- data.frame(title = "Test title", abstract = "Test abstract", studyid = "TestID")
  prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
  temperature <- 0.5
  model <- "gpt-3.5-turbo"
  
  result <- chat(data, prompt, temperature, model)
  
  # Check if the result is a data frame
  expect_s3_class(result, "data.frame")
  expect_equal(colnames(result), c("Title", "StudyID", "OpenAIResponse"))
})