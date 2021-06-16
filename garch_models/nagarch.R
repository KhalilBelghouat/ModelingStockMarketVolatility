# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script fits a NAGARCH(1, 1) model to the data.

# The NAGARCH(1, 1) model.
# Model specification.
NAGARCHspec = ugarchspec(variance.model = list(model = "fGARCH",
                                             submodel = "NAGARCH",
                                             garchOrder = c(1, 1)),
                       mean.model = list(armaOrder = c(3, 1)),
                       distribution.model = "norm")

# Model fitting.
NAGARCH = ugarchfit(spec = NAGARCHspec,
                  data = log_returns)
NAGARCH