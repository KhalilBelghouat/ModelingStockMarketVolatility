# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script generates the ACF and PACF plots of the squared residuals and applies the Ljung-Box test in order to detect the ARCH effect.

# ACF.
acf(ARIMA$residuals^2, main = "")

# PACF.
pacf(ARIMA$residuals^2, main = "")

# The Ljung-Box test.
Box.test(ARIMA$residuals^2, type="Ljung", lag = 13)