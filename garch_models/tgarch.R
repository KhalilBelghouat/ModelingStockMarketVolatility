# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script fits a TGARCH(1, 1) model to the data.

# The TGARCH(1, 1) model.
# Model specification.
TGARCHspec = ugarchspec(variance.model = list(model = "fGARCH",
                                              submodel = "TGARCH",
                                              garchOrder = c(1, 1)),
                       mean.model = list(armaOrder = c(3, 1)),
                       distribution.model = "norm")

# Model fitting.
TGARCH = ugarchfit(spec = TGARCHspec,
                  data = log_returns)
TGARCH