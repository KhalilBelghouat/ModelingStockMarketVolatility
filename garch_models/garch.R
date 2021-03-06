# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script fits a GARCH(1, 1) model to the data.

# The GARCH(1, 1) model.
# Model specification.
GARCHspec = ugarchspec(variance.model = list(model = "fGARCH",
                                             submodel = "GARCH",
                                             garchOrder = c(1, 1)),
                       mean.model = list(armaOrder = c(3, 1)),
                       distribution.model = "norm")

# Model fitting.
GARCH = ugarchfit(spec = GARCHspec,
                  data = log_returns)
GARCH