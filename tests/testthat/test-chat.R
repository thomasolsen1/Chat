test_that("chat function returns expected output", {
  # Define a small test data frame
  data <- data.frame(
    title = c("Study 1", "Study 2"),
    abstract = c("Abstract 1", "Abstract 2")
  )

  # Define the other parameters
  prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
  temperature <- 0.5
  model <- "gpt-3.5-turbo"
  functions <- incl_function
  function_call_name <- list(name = "inclusion_decision")

  # Call the function
  result <- chat(data, prompt, temperature, model, functions, function_call_name)

  # Check that the result is a data frame with the expected columns
  expect_s3_class(result, "tbl_df")
  expect_equal(colnames(result), c("Title", "StudyID", "decision_gpt", "decision_binary"))
})