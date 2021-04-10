## Toolbox Required
* Optimization Toolbox: fmincon function to construct portfolios

## Notes
* Correlation and Drawdown estimates are directly done in Excel files, MATLAB codes are used only to plot graphs; data unsmoothing is also performed in Excel 
* Datasets are imported manually from MATLAB folder
* co_moments function to compute co-skewness and co-kurtosis matrixes is available at this [link](https://www.mathworks.com/matlabcentral/fileexchange/47839-co_moments-m)
* In order to build MVSK portfolios, you need to manually copy-paste the covariance matrix in the nlcon (non linear constraint) function; assign the matrix a name (e.g. 'sigma') produces an error in the fmincon function
