## Toolbox Required
* Optimization Toolbox: fmincon function to construct portfolios

## Notes
* Correlation and Drawdown calculation is directly done in Excel files, MATLAB codes are used only to plot graphs
* co_moments function to compute co-skewness and co-kurtosis matrixes is avaiable at this [link](https://www.mathworks.com/matlabcentral/fileexchange/47839-co_moments-m)
* In order to build MVSK portfolios, you need to manually copy-paste the covariance matrix in the nlcon (non linear constraint) function; assign the matrix a name (e.g. 'sigma') produce an error in the fmincon function
