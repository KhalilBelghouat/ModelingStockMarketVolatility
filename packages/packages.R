# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script installs and loads all R packages required to reproduce the results.

# Installing R packages.
install.packages('rugarch')
install.packages("ggfortify")
install.packages("tseries")
install.packages("forecast")

# Loading the installed R packages.
library(rugarch)
library(ggfortify)
library(tseries)
library(forecast)

# Setting white background plots.
theme_set(theme_bw())