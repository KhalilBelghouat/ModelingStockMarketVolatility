# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# Uncertainty, Risk and Volatility ́in Financial Markets

# This script generates the volatility plot of each model.

# GARCH
plot(GARCH@fit$sigma, xlab = "t", ylab = "sigma", type = "l", col = "6", main = "")

# EGARCH
plot(EGARCH@fit$sigma, xlab = "t", ylab = "sigma", type = "l", col = "5", main = "")

# GJR-GARCH
plot(GJRGARCH@fit$sigma, xlab = "t", ylab = "sigma", type = "l", col = "2", main = "")

# TGARCH
plot(TGARCH@fit$sigma, xlab = "t", ylab = "sigma", type = "l", col = "3", main = "")

# NAGARCH
plot(NAGARCH@fit$sigma, xlab = "t", ylab = "sigma", type = "l", col = "4", main = "")