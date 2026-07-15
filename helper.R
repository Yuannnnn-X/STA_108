# helper.R
# ------------------------------------------------------------
# Common helper functions for STAT 133 coursework
# Author: Yuan Xie
# UC Berkeley
# ------------------------------------------------------------

library(tidyverse)

#-------------------------------------------------------------
# Load packages
#-------------------------------------------------------------

load_packages <- function() {
  suppressPackageStartupMessages({
    library(tidyverse)
    library(ggplot2)
    library(dplyr)
    library(readr)
  })
}

#-------------------------------------------------------------
# Theme for ggplot
#-------------------------------------------------------------

theme_stat133 <- function() {
  theme_minimal(base_size = 14) +
    theme(
      plot.title = element_text(face = "bold"),
      legend.position = "bottom"
    )
}

#-------------------------------------------------------------
# Percentage formatter
#-------------------------------------------------------------

percent <- function(x) {
  paste0(round(100 * x, 1), "%")
}

#-------------------------------------------------------------
# Root Mean Squared Error
#-------------------------------------------------------------

rmse <- function(actual, predicted) {
  sqrt(mean((actual - predicted)^2))
}

#-------------------------------------------------------------
# Mean Absolute Error
#-------------------------------------------------------------

mae <- function(actual, predicted) {
  mean(abs(actual - predicted))
}

