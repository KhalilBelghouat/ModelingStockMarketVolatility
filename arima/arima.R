# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script fits an ARIMA(p, d, q) model to the data.

# The ARIMA(p, d, q) model.
ARIMA = auto.arima(log_returns, allowmean = TRUE)
ARIMA