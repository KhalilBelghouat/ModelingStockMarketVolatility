# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script fits a GJR-GARCH(1, 1) model to the data.

# The GJR-GARCH(1, 1) model.
# Model specification.
GJRGARCHspec = ugarchspec(variance.model = list(model = "fGARCH",
                                                submodel = "GJRGARCH",
                                                garchOrder = c(1, 1)),
                          mean.model = list(armaOrder = c(3, 1)), 
                          distribution.model = "norm")

# Model fitting.
GJRGARCH = ugarchfit(spec = GJRGARCHspec,
                     data = log_returns)
GJRGARCH