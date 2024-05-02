test_that("chat function returns expected output", {
  # Define a small test data frame
  data <- data.frame(
    title = c("Study 1", "Study 2"),
    abstract = c("Abstract 1", "Abstract 2"),
    studyid = c("ID1", "ID2")
  )

  # Define the other parameters
  prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
  model <- "gpt-3.5-turbo"

  # Call the function
  result <- chat(data, prompt, model)

  # Check that the result is a tibble with the expected columns
  expect_s3_class(result, "tbl_df")
  expect_equal(colnames(result), c("Title", "StudyID", "decision_gpt"))
})