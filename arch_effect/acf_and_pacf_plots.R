# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script generates the ACF and PACF plots of the squared log-returns in order to detect the ARCH effect.

# Visualizing the squared log-returns.
plot(log_returns^2, type="l", xlab = "t", ylab = "Squared log-returns")

# ACF.
acf(log_returns^2, main = "")

# PACF.
pacf(log_returns^2, main = "")