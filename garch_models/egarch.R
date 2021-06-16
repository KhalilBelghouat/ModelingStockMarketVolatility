# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script fits a EGARCH(1, 1) model to the data.

# The EGARCH(1, 1) model.
# Model specification.
EGARCHspec = ugarchspec(variance.model = list(model = "eGARCH",
                                             garchOrder = c(1, 1)),
                       mean.model = list(armaOrder = c(3, 1)),
                       distribution.model = "norm")

# Model fitting.
EGARCH = ugarchfit(spec = EGARCHspec,
                  data = log_returns)
EGARCH