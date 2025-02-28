
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Screen titles and abstracts with OpenAI’s GPT models

This function takes a data frame of study details, constructs a prompt
for each study, and sends it to OpenAI’s GPT-3.5-turbo model, as
default, for a response. The function returns a tibble with the original
study details and the model’s response.

## Parameters

- `data`: A data frame containing the study details. Each row should
  represent a study and must have ‘title’ and ‘abstract’ columns.
- `prompt`: A string that will be prepended to the study details to form
  the prompt for the model.
- `model`: A string specifying the model to use. Default is
  “gpt-3.5-turbo”.

## Return

A tibble with the original study details and the model’s response.

## Installation

You can install the development version of Chat from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("thomasolsen1/Chat")
```

## Example

This is an example of what the output might look like:

``` r
prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
loaded_objects <- load("./data/filges2015_dat_modified.rda")
data <- get(loaded_objects)
chat(data, prompt, model = "gpt-3.5-turbo")

A tibble: 6 × 3
   Title                                     StudyID decision_gpt
   <chr>                                     <chr>   <chr>       
 1 Estimating and communicating prognosis i… 1       "No, this s…
 2 Self-Directed Behavioral Family Interven… 2       "No, this s…
 3 Frequency domain source localization sho… 3       "No, this s…
 4 A Review of: 'Kearney, C. A. (2010). Hel… 4       "No, this s…
 5 Topographic differences in the adolescen… 5       "No, this s…
 6 BOOK REVIEW                               6       "No, this s…
```
