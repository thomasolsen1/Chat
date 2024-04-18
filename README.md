
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Chat

<!-- badges: start -->
<!-- badges: end -->

The goal of Chat is to screen abstracts and titles using OpenAI’s GPT
API models.

## Installation

You can install the development version of Chat from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("thomasolsen1/Chat")
```

## Usage

This is a basic example which shows how to send a prompt to OpenAI’s API
model:

``` r
library(Chat)

prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
loaded_objects <- load("C:/Users/thoma/Desktop/VIVE/filges2015_dat_modified.rda")
data <- get(loaded_objects)
chat(data, prompt, 0.5, "gpt-3.5-turbo")
#> Waiting 20s for retry backoff ■■ Waiting 20s for retry backoff ■■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff ■■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff ■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
#>                                                                                                                   title
#> 1                                                 Estimating and communicating prognosis in advanced neurologic disease
#> 2                                                   Self-Directed Behavioral Family Intervention: Do Therapists Matter?
#> 3                         Frequency domain source localization shows state-dependent diazepam effects in 47-channel EEG
#> 4 A Review of: 'Kearney, C. A. (2010). Helping Children with Selective Mutism: A Guide for School-Based Professionals.'
#> 5                           Topographic differences in the adolescent maturation of the slow wave EEG during NREM sleep
#> 6                                                                                                           BOOK REVIEW
#>   studyid OpenAIResponse
#> 1       1              1
#> 2       2              1
#> 3       3              1
#> 4       4              0
#> 5       5              1
#> 6       6              0
```

The `chat` function is used to make queries to OpenAI’s API models. The
function takes four arguments:

- `data`: A data frame with the data to be used in the messages. Each
  row represents a study and should have columns for ‘title’ and
  ‘abstract’.
- `prompt`: A string to be used as the initial prompt in the messages.
- `temperature`: The sampling temperature, between 0 and 1. Higher
  values like 0.8 will make the output more random, while lower values
  like 0.2 will make it more focused and deterministic. If set to 0, the
  model will use log probability to automatically increase the
  temperature until certain thresholds are hit.
  (<https://platform.openai.com/docs/api-reference/audio>)
- `model`: The model of OpenAI’s API to use

The function returns a dataframe containing the study title, study ID,
and the response from OpenAI’s API models.

``` r
library(Chat)

prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
loaded_objects <- load("C:/Users/thoma/Desktop/VIVE/filges2015_dat_modified.rda")
data <- get(loaded_objects)
result <- chat(data, prompt, 0.5, "gpt-3.5-turbo")
#> Waiting 20s for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry
#> backoff ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■■
#> Waiting 20s for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff ■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff ■■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff ■■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff ■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■ Waiting 20s
#> for retry backoff ■■■ Waiting 20s for retry backoff ■■■ Waiting 20s for retry
#> backoff ■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff
#> ■■■■ Waiting 20s for retry backoff ■■■■ Waiting 20s for retry backoff ■■■■■
#> Waiting 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■ Waiting
#> 20s for retry backoff ■■■■■ Waiting 20s for retry backoff ■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for
#> retry backoff ■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s
#> for retry backoff ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■ Waiting
#> 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■
#> Waiting 20s for retry backoff ■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry
#> backoff ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ Waiting 20s for retry backoff
#> ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
print(result)
#>                                                                                                                   title
#> 1                                                 Estimating and communicating prognosis in advanced neurologic disease
#> 2                                                   Self-Directed Behavioral Family Intervention: Do Therapists Matter?
#> 3                         Frequency domain source localization shows state-dependent diazepam effects in 47-channel EEG
#> 4 A Review of: 'Kearney, C. A. (2010). Helping Children with Selective Mutism: A Guide for School-Based Professionals.'
#> 5                           Topographic differences in the adolescent maturation of the slow wave EEG during NREM sleep
#> 6                                                                                                           BOOK REVIEW
#>   studyid OpenAIResponse
#> 1       1            1.1
#> 2       2              1
#> 3       3              0
#> 4       4              0
#> 5       5              1
#> 6       6              0
```
