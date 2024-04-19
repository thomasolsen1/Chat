
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Chat with the OpenAI API

This function sends a series of messages to the OpenAI API and returns
the API’s responses. The messages are generated based on the data
provided.

## Parameters

- `data`: A data frame with the data to be used in the messages. Each
  row represents a study and should have columns for ‘title’ and
  ‘abstract’.
- `prompt`: A string to be used as the initial prompt in the messages.
- `temperature`: A numeric value to control the randomness of the API’s
  responses.
- `model`: A string specifying the model to be used by the API.
- `functions`: A list of functions to be used in the decision-making
  process. Default is ‘incl_function’.
- `function_call_name`: A list with the name of the function to be
  called for making the decision. Default is list(name =
  “inclusion_decision”).

## Return

A data frame with the API’s responses. Each row corresponds to a row in
the input data and contains the study title, study ID, and the API’s
response.

## Installation

You can install the development version of Chat from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("<your-repo>")
```

## Example

This is an example of what the output might look like:

``` r
prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
loaded_objects <- load("./data/filges2015_dat_modified.rda")
data <- get(loaded_objects)
chat(data, prompt, 0.5, "gpt-3.5-turbo-0125")

A tibble: 6 × 4
   Title                                     StudyID decision_gpt decision_binary
   <chr>                                     <chr>   <chr>                  <dbl>
 1 Estimating and communicating prognosis i… 1       "No, this s…               0
 2 Self-Directed Behavioral Family Interven… 2       "No, this s…               0
 3 Frequency domain source localization sho… 3       "No, this s…               0
 4 A Review of: 'Kearney, C. A. (2010). Hel… 4       "No, this s…               0
 5 Topographic differences in the adolescen… 5       "No, this s…               0
 6 BOOK REVIEW                               6       "No, this s…               0
```
