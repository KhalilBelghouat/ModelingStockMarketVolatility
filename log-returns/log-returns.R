# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script imports and differentiate the MADEX data.

# Import and differenciate original data.
market_index <- read.csv("MADEX.csv")[4228:6964, ]
log_returns <- diff(log(market_index$Instrument))

# Visualizing MADEX's log-returns.
plot(log_returns, type="l", xlab = "t", ylab = "Log-returns")