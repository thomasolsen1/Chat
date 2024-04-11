
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Chat

<!-- badges: start -->
<!-- badges: end -->

The goal of Chat is to make queries to OpenAI’s API models. This package
is still in development and is not yet on CRAN.

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

chat("What is an apple", 0.5, "gpt-3.5-turbo-0613")
#>                Model Temperature          Message
#> 1 gpt-3.5-turbo-0613         0.5 What is an apple
#>                                                                                                                                                                                                                                                                                                                                                                                 Response
#> 1 An apple is a round or oval-shaped fruit with a firm outer skin that can be red, green, or yellow in color. It is typically sweet or tart in taste and is commonly eaten raw or used in various culinary dishes such as pies, sauces, and salads. Apples are a good source of dietary fiber, vitamins, and antioxidants, and they are widely cultivated and consumed around the world.
```

The `chat` function is used to make queries to OpenAI’s API models. The
function takes three arguments:

- `message`: The message sent to OpenAI
- `temperature`: The sampling temperature, between 0 and 1. Higher
  values like 0.8 will make the output more random, while lower values
  like 0.2 will make it more focused and deterministic. If set to 0, the
  model will use log probability to automatically increase the
  temperature until certain thresholds are hit.
  (<https://platform.openai.com/docs/api-reference/audio>)
- `model`: The model of OpenAI’s API to use

The function returns a dataframe containing the chosen message,
temperature, model and the response from OpenAI’s API models.

``` r
library(Chat)

result <- chat("What is an apple", 0.5, "gpt-3.5-turbo-0613")
print(result)
#>                Model Temperature          Message
#> 1 gpt-3.5-turbo-0613         0.5 What is an apple
#>                                                                                                                                                                                                                                                                                                        Response
#> 1 An apple is a round fruit with a firm outer skin that comes in various colors such as red, green, or yellow. It is typically sweet or tart in taste and has a crisp texture. Apples are a popular and widely cultivated fruit, known for their nutritional benefits and versatility in various culinary uses.
```
