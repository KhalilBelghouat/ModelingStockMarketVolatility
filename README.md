# Modeling Stock Market Volatility

This repository includes the code used in one of the master's projects "Modeling Stock Market Volatility" by Khalil Belghouat, .

In this project, we apply symmetric and asymmetric GARCH models to one of Morocco stock indices, namely, the MADEX index. 

## Prerequisites

The ```R``` programming language, version 4.0.3, and its statistical and machine learning libraries were used to build all applied models. The ```R``` script _packages.R_ in the _packages_ folder installs and loads all necessary ```R``` packages. 

All operations, from data preprocessing to model estimation, were carried out on the Google Colaboratory platform.

## Theoretical Background

Volatility refers to the dispersion of all the probable outcomes of an uncertain variable. In financial markets, the variable of interest is often the return of a specific security, stock index or portfolio. In most cases, the higher the volatility, the riskier the security. Volatility is extremely important since a variety of risk measures, such as VaR (Value at Risk) and ES (Expected Shortfall), depend on it. However, a multiplicity of pricing models assume that the volatility of the underlying is constant. In practice, some periods exhibit higher volatility than others. The variance is not constant but heteroscedastic. And unlike asset prices, it is not observable, that is to say, volatility is a latent variable to be estimated.

## Application and Results

Following the principal steps layed by Ruey S. Tsay in his book, we applied various volatility models to the Moroccan Most Active Shares Index.

- for the ARIMA model:

 | AR(1) | 
--- | --- 
Estimate | 
Standard Error | 
- :

 |  |  |
--- | --- | --- | --- 
 |  |  | 
 |  |  | 

- :

 |  |  |
--- | --- | --- | --- 
 |  |  | 
 |  |  | 

- :

 |  |  |
--- | --- | --- | --- 
 |  |  | 
 |  |  | 

- :

 |  |  |
--- | --- | --- | --- 
 |  |  | 
 |  |  | 
 
## Code Structure

### About The Data

The data, a financial time series, is organized in a table containing 3 columns and 7,214 rows. The first column contains the date, the second column contains the MADEX index, and the third column contains the index's daily variations.

### Model Building and Estimation

Ruey S. Tsay states in the third chapter of his book, "Analysis of Financial Time Series," that building a volatility model for an asset return series consists of four principal steps:

- Specify a mean equation by testing for serial dependence in the data and, if necessary, building an econometric model for the return series to remove any linear dependence.

- Use the residuals of the mean equation to test for ARCH effects.

- Specify a volatility model if ARCH effects are statistically significant, and perform a joint estimation of the mean and volatility equations.

- Check the fitted model carefully and refine it if necessary.

For the mean equation, an ARIMA(3, 0, 1) model was selected using the ```auto.arima``` function which returns the best ARIMA model according to either AIC, AICc or BIC value. As for the volatility, a variety of GARCH and extension models were applied and estimated using the ```rugarch``` package.
