# MSc Thesis | Hedge fund and Portfolio Diversification. An Empirical Analysis
### (Original title: Gli hedge fund e la diversificazione di portafoglio. Un'analisi empirica)

NOTE: the original [document](https://github.com/dpiloni/MSc-Thesis-Hedge-fund-and-Portfolio-Diversification.-An-Empirical-Analysis/blob/main/MSc_Thesis.pdf) is provided in Italian language. However, in this file I present all the key findings of the analysis.

## Overview
* Identified which hedge fund strategies are able to decorrelate from stock and bond markets, especially during bear market phases, and if this feature can deliver benefits to a diversified portfolio (increase of risk-adjusted performance and/or maximum drawdown reduction)
* Managed Futures  and  Equity Market Neutral are the only strategies that show negative or low correlation during market crises
* Decorrelation ability is not a key feature in diversified portfolios: hedge funds seem more useful to boost performance, rather than to represent a well diversified asset class.
* The most efficient strategies are Global Macro, Long/Short Equity and Distressed Securities

## Table of Contents
<div >

1.  [Introduction](#1)<br>
2.  [Data](#2) <br>
3.  [Methodology](#3) <br>
4.  [Results](#4) <br>
5.  [Conclusions](#5) <br>
    </div>

## Introduction <a id="1"></a>
Hedge funds are alternative investment vehicles, whose market has grown fast in the last decade. In particular, institutional investors include hedge funds in their portfolio because they offer higher expected returns and greater diversification across asset classes. On the other side, hedge funds also offer more complex risk exposures, including illiquidity and tail risk. The objective of the analysis is to verify the effective ability of hedge fund manager to decorrelate from the markets, and if this feature can have a positive impact when it comes to portfolio optimization. In fact, by including an asset class well diversified from the others could deliver to investor different benefits, especially during market crisis.

## Data <a id="2"></a>
The analysis is performed using monthly data for to the period April 1994 - June 2020 (in US dollars).
In order to measure the different asset classes I use:
* Equity: MSCI All Country World Index (source: Morningstar Direct)
* Bonds: Bloomberg Barclays Global Aggregate (source: Morningstar Direct)
* Commodities: Standard & Poor's GSCI (source: Morningstar Direct)
* Hedge Funds: Credit Suisse Hedge Fund Indexes for every strategy considered (source: Credit Suisse)
    * Long/Short Equity
    * Emerging Markets
    * Global Macro
    * Managed Futures
    * Convertible Arbitrage
    * Equity Market Neutral
    * Event Driven
    * Distressed Securities
    * Fixed Income Arbitrage
    * Multi-Strategy

Descriptive Statistics:

| Statistics  | Min  | Max  | Median (annualized)  | Mean (annualized)  | Std.Dev (annualized) | Skewness  | Kurtosis  |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| Long/Short Equity  | -11,43%  | 13,01%  | 8,76%  | 8,40%  | 8,94%  | -0,06  | 7,01  | 
| Emerging Markets  | -23,03%  |  16,42% | 11,52%  | 7,20%  | 12,99%  | -0,86  | 9,70  |  
| Global Macro  | -11,55%  | 10,60%  | 9,36%  | 9,48%  | 8,45%  | 0,19  | 8,32  |   
| Managed Futures  | -9,35%  | 9,95%  | 2,52%  | 4,68%  | 11,26%  | 0,05  | 2,93  |   
| Convertible Arbitrage  | -12,59%  |  5,81% | 8,64%  | 6,36%  | 6,24%  | -2,62  | 20,30  |   
| Equity Market Neutral  | -40,45%  | 3,66%  | 6,60%  | 4,20%  | 9,01%  | -12,39  | 194,42  |   
| Event Driven  | -13,47%  | 4,34%  | 10,20%  | 7,08%  | 6,58%  | -2,66  | 17,73  |   
| Distressed Securities  | -12,45%  | 4,15%  | 10,92%  | 8,04%  | 6,27%  | -2,29  | 15,25  |   
| Fixed Income Arbitrage  | -14,04%  | 4,33%  | 7,32%  | 5,04%  | 5,09%  | -4,66  | 38,55  |   
| Multi-Strategy  | -7,35%  | 4,28%  | 8,64%  | 6,96%  | 4,95%  | -1,75  | 9,86  |   
| MSCI ACWI  | -19,79%  | 11,90%  | 14,80%  | 8,22%  | 15,14%  | -0,78  | 4,89  |   
| Bloomberg Barclays Global Aggregate  | -3,97%  | 6,21%  | 5,53%  | 4,94%  | 5,29%  | -0,01  | 3,75  |   
| Standard & Poor's GSCI  | -34,85%  | 17,95%  | 6,83%  | -1,08%  | 22,89%  | -0,97  | 6,62  |   

![figura 2-confronto con normale](https://user-images.githubusercontent.com/78954578/114316271-1b4a6680-9b03-11eb-84a9-f4d93a0db9e8.jpg)

* Common Hedge Fund returns issues: negative skewness, high excess kurtosis and autocorrelation 
* To solve autocorrelation issue, I use the unsmoothing technique proposed by Brooks & Kat (2001).

## Methodology <a id="3"></a>
In the first step of the analysis, I measure the correlation between hedge fund strategies and traditional markets (stocks and bonds).
Correlation is measured in three different ways:
* Unconditional correlation 
* Conditional correlation, considering bull and bear market phases
* Dynamic correlation, using rolling windows of 36 months.

In the second step, I construct portfolios consisting of equities, bonds, commodities and each of the hedge fund strategies, using multiple objective approach. In particular, I use the Mean-Variance-Skewness-Kurtosis (MVSK) framework by Davies, Kat & Lu (2009).

Finally I measure the performance of the portfolios obtained:
* Risk-adjusted performance, using Sharpe Ratio in the standard and Andrew Lo (2002) version
* Alpha, using Asness et al. (2001) CAPM equation and Fung & Hsieh (2004) risk factor models
* Ex-post performance, calculating maximum drawdowns and Calmar ratios.
    
## Results <a id="4"></a>
### Correlation Analysis

1. Unconditional correlation

<table class="tg">
<thead>
  <tr>
    <th class="tg-c3ow" rowspan="2">Pearson Correlation Coefficients</th>
    <th class="tg-c3ow" colspan="2">Time Series</th>
    <th class="tg-c3ow" colspan="2">Unsmoothed Series</th>
  </tr>
  <tr>
    <td class="tg-c3ow">MSCI ACWI</td>
    <td class="tg-c3ow">BB Global</td>
    <td class="tg-c3ow">MSI ACWI</td>
    <td class="tg-c3ow">BB Global</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-c3ow">Long/Short Equity</td>
    <td class="tg-c3ow">0,74</td>
    <td class="tg-c3ow">0,18</td>
    <td class="tg-c3ow">0,74</td>
    <td class="tg-c3ow">0,20</td>
  </tr>
  <tr>
    <td class="tg-c3ow">Emerging Markets</td>
    <td class="tg-c3ow">0,64</td>
    <td class="tg-c3ow">0,07</td>
    <td class="tg-c3ow">0,67</td>
    <td class="tg-c3ow">0,12</td>
  </tr>
  <tr>
    <td class="tg-0pky">Global Macro</td>
    <td class="tg-0pky">0,28</td>
    <td class="tg-0pky">0,12</td>
    <td class="tg-0pky">0,28</td>
    <td class="tg-0pky">0,12</td>
  </tr>
  <tr>
    <td class="tg-0pky">Managed Futures</td>
    <td class="tg-0pky">-0,01</td>
    <td class="tg-0pky">0,29</td>
    <td class="tg-0pky">-0,01</td>
    <td class="tg-0pky">0,29</td>
  </tr>
  <tr>
    <td class="tg-0pky">Convertible Arbitrage</td>
    <td class="tg-0pky">0,47</td>
    <td class="tg-0pky">0,15</td>
    <td class="tg-0pky">0,49</td>
    <td class="tg-0pky">0,18</td>
  </tr>
  <tr>
    <td class="tg-0pky">Equity Market Neutral</td>
    <td class="tg-0pky">0,29</td>
    <td class="tg-0pky">0,06</td>
    <td class="tg-0pky">0,29</td>
    <td class="tg-0pky">0,06</td>
  </tr>
  <tr>
    <td class="tg-0pky">Event Driven</td>
    <td class="tg-0pky">0,71</td>
    <td class="tg-0pky">0,10</td>
    <td class="tg-0pky">0,74</td>
    <td class="tg-0pky">0,14</td>
  </tr>
  <tr>
    <td class="tg-0pky">Distressed Securities</td>
    <td class="tg-0pky">0,66</td>
    <td class="tg-0pky">0,08</td>
    <td class="tg-0pky">0,69</td>
    <td class="tg-0pky">0,14</td>
  </tr>
  <tr>
    <td class="tg-0pky">Fixed Income Arbitrage</td>
    <td class="tg-0pky">0,40</td>
    <td class="tg-0pky">0,14</td>
    <td class="tg-0pky">0,41</td>
    <td class="tg-0pky">0,15</td>
  </tr>
  <tr>
    <td class="tg-0pky">Multi-Strategy</td>
    <td class="tg-0pky">0,51</td>
    <td class="tg-0pky">0,21</td>
    <td class="tg-0pky">0,51</td>
    <td class="tg-0pky">0,23</td>
  </tr>
</tbody>
</table>

* Higher average correlation with the stock market (0,47) compared to the bond market (0,14)
* Managed Futures is the only strategy to show negative correlation with the stock market
* Highest correlations are estimated for Long/Short Equity and Event Driven strategies
     
2. Conditional correlation    

<table class="tg">
<thead>
  <tr>
    <th class="tg-c3ow" rowspan="2">Conditional Correlation</th>
    <th class="tg-c3ow" colspan="3">Stock Market</th>
    <th class="tg-c3ow" colspan="3">Bond Market</th>
  </tr>
  <tr>
    <td class="tg-c3ow">Up</td>
    <td class="tg-c3ow">Down</td>
    <td class="tg-c3ow">Delta</td>
    <td class="tg-c3ow">Up</td>
    <td class="tg-0pky">Down</td>
    <td class="tg-0pky">Delta</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-c3ow">Long/Short Equity</td>
    <td class="tg-c3ow">0,42</td>
    <td class="tg-c3ow">0,64</td>
    <td class="tg-c3ow">-0,22</td>
    <td class="tg-c3ow">0,14</td>
    <td class="tg-0pky">0,28</td>
    <td class="tg-0pky">-0,14</td>
  </tr>
  <tr>
    <td class="tg-c3ow">Emerging Markets</td>
    <td class="tg-c3ow">0,42</td>
    <td class="tg-c3ow">0,57</td>
    <td class="tg-c3ow">-0,15</td>
    <td class="tg-c3ow">0,02</td>
    <td class="tg-0pky">0,27</td>
    <td class="tg-0pky">-0,24</td>
  </tr>
  <tr>
    <td class="tg-0pky">Global Macro</td>
    <td class="tg-0pky">0,04</td>
    <td class="tg-0pky">0,18</td>
    <td class="tg-0pky">-0,14</td>
    <td class="tg-0pky">0,10</td>
    <td class="tg-0pky">0,17</td>
    <td class="tg-0pky">-0,07</td>
  </tr>
  <tr>
    <td class="tg-0pky">Managed Futures</td>
    <td class="tg-0pky">-0,02</td>
    <td class="tg-0pky">-0,31</td>
    <td class="tg-0pky">0,29</td>
    <td class="tg-0pky">0,24</td>
    <td class="tg-0pky">0,09</td>
    <td class="tg-0pky">0,16</td>
  </tr>
  <tr>
    <td class="tg-0pky">Convertible Arbitrage</td>
    <td class="tg-0pky">0,43</td>
    <td class="tg-0pky">0,35</td>
    <td class="tg-0pky">0,08</td>
    <td class="tg-0pky">0,11</td>
    <td class="tg-0pky">0,15</td>
    <td class="tg-0pky">-0,04</td>
  </tr>
  <tr>
    <td class="tg-0pky">Equity Market Neutral</td>
    <td class="tg-0pky">0,35</td>
    <td class="tg-0pky">0,16</td>
    <td class="tg-0pky">0,19</td>
    <td class="tg-0pky">-0,06</td>
    <td class="tg-0pky">0,29</td>
    <td class="tg-0pky">-0,35</td>
  </tr>
  <tr>
    <td class="tg-0pky">Event Driven</td>
    <td class="tg-0pky">0,57</td>
    <td class="tg-0pky">0,58</td>
    <td class="tg-0pky">-0,01</td>
    <td class="tg-0pky">0,05</td>
    <td class="tg-0pky">0,20</td>
    <td class="tg-0pky">-0,15</td>
  </tr>
  <tr>
    <td class="tg-0pky">Distressed Securities</td>
    <td class="tg-0pky">0,44</td>
    <td class="tg-0pky">0,57</td>
    <td class="tg-0pky">-0,13</td>
    <td class="tg-0pky">0,03</td>
    <td class="tg-0pky">0,19</td>
    <td class="tg-0pky">-0,15</td>
  </tr>
  <tr>
    <td class="tg-0pky">Fixed Income Arbitrage</td>
    <td class="tg-0pky">0,11</td>
    <td class="tg-0pky">0,48</td>
    <td class="tg-0pky">-0,37</td>
    <td class="tg-0pky">-0,07</td>
    <td class="tg-0pky">0,26</td>
    <td class="tg-0pky">-0,33</td>
  </tr>
  <tr>
    <td class="tg-0pky">Multi-Strategy</td>
    <td class="tg-0pky">0,32</td>
    <td class="tg-0pky">0,40</td>
    <td class="tg-0pky">-0,08</td>
    <td class="tg-0pky">0,04</td>
    <td class="tg-0pky">0,17</td>
    <td class="tg-0pky">-0,13</td>
  </tr>
</tbody>
</table>

* General correlation increasing during bear market phases
* Managed Futures, Convertible Arbitrage and Equity Market Neutral strategies are able to decorrelate during negative market phases

3. Dynamic correlation (using rolling windows of 36 months)
   
   3.1 Moving correlation with the stock market
   
     <p align="center">
     <img src="https://user-images.githubusercontent.com/78954578/113745858-f8d0db80-9705-11eb-8355-95f6f541d536.jpg" width="700" height="300">
     </p>
   
   * General long-term upward trend
   * Managed Futures is the only strategy to show negative correlation during 2008 market crisis
   * Managed Futures and Equity Market Neutral are the only strategies that have shown low correlation during March 2020 market crash
   
   3.2 Moving correlation with the bond market 
   
     <p align="center">
     <img src="https://user-images.githubusercontent.com/78954578/113858752-64698600-97a4-11eb-8139-31451c41f840.jpg" width="700" height="300">
     </p>
       
    * High average correlation range (0,87)
    * Lower peaks and bottoms than stock market correlations   

### MVSK Portfolios

The portfolios are subject to full investment constraint, no short-selling constraint and diversification constraint (min weight 10%, max weight 50%)

| Portfolios  | Hedge Fund Weight  | Stock Weight  | Bond Weight  | Commodities Weight  | Min  | Max  | Mean (annualized)  | Std.Dev (annualized)  | Skewness  | Kurtosis  |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| Long/Short Equity  | 0,50  | 0,12  | 0,18  | 0,10  | -10,29%  | 7,82%  | 6,47%  | 7,72%  | -0,81  | 6,47  |
| Emerging Markets  | 0,11  | 0,32  | 0,47  | 0,10  | -12,88%  | 7,46%  | 5,63%  | 8,11%  | -1,11  | 7,47  |
| Global Macro  | 0,50  | 0,30  | 0,10  | 0,10  | -12,18%  | 7,50%  | 7,61%  | 8,36%  | -0,94  | 7,26  |
| Managed Futures  | 0,10  | 0,32  | 0,48  | 0,10  | -10,92%  | 6,82%  | 5,36%  | 7,49%  | -0,88  | 6,21  |
| Convertible Arbitrage  | 0,28  | 0,31  | 0,31  | 0,10  | -14,12%  | 7,65%  | 5,74%  | 7,68%  | -1,55  | 11,11  |
| Equity Market Neutral  | 0,10  | 0,40  | 0,40  | 0,10  | -12,89%  | 7,62%  | 5,58%  | 8,45%  | -1,06  | 6,96  |
| Event Driven  | 0,50  | 0,21  | 0,19  | 0,10  | -13,47%  | 6,70%  | 6,12%  | 7,62%  | -1,79  | 10,90  |
| Distressed Securities  | 0,50  | 0,21  | 0,19  | 0,10  | -11,78%  | 6,67%  | 6,55%  | 7,37%  | -1,73  | 10,22  |
| Fixed Income Arbitrage  | 0,13  | 0,40  | 0,17  | 0,10  | -14,42%  | 7,71%  | 5,66%  | 8,38%  | -1,27  | 8,74  |
| Multi-Strategy  | 0,48  | 0,32  | 0,10  | 0,10  | -13,35%  | 7,43%  | 6,36%  | 7,88%  | -1,50  | 9,65  |
| Bond/Equity/Commodities  | 0,00  | 0,40  | 0,50  | 0,10  | -13,07%  | 7,61%  | 5,65%  | 8,41%  | -1,01  | 6,97  |

* The weight of hedge fund strategies in the portfolio doesn't seem to depend on the ability of decorrelate from the markets, but on the historical performance
* The strategies selected with the maximum weight have the highest historical performances (e.g. Long/Short Equity and Global Macro).

### Performance Evaluation

#### 1. Risk-adjusted Performance

| Sharpe Ratio  | Unadjusted  | Unsmoothed  | Lo's Version  |   
|:--|:-:|:-:|:-:|
| Long/Short Equity  | 0,55  | 0,50  | 0,49  |  
| Emerging Markets  | 0,42  | 0,40  | 0,42  |   
| Global Macro  | 0,64  | 0,64  | 0,64  |   
| Managed Futures  | 0,42  | 0,41  | 0,42  |   
| Convertible Arbitrage  | 0,46  | 0,42  | 0,39  |   
| Equity Market Neutral  | 0,40  | 0,39  | 0,36  |   
| Event Driven  | 0,51  | 0,45  | 0,43  |   
| Distressed Securities  | 0,59  | 0,50  | 0,49  |   
| Fixed Income Arbitrage  | 0,41  | 0,30  | 0,37  |
| Multi-Strategy  | 0,52  | 0,48  | 0,44  |
| Bond/Equity/Commodities  | 0,41  | 0,41  | 0,41  |

* FTSE 1-Month T-Bill is used as proxy for the risk-free rate
* Best risk-adjusted performances for Global Macro, Long/Short Equity and Distressed Securities portfolios
* Poor performance for Managed Futures and Equity Market Neutral portfolios

#### 2. Alpha in the Asness 3-lag CAPM

| 3-lag CAPM  | Alpha (annualized)  | Beta0  | Beta1  | Beta2  | Beta3  | Adjusted R-Squared  |   
|:--|:-:|:-:|:-:|:-:|:-:|:-:|
| Long/Short Equity  | 0,02**  | 0,38***  | 0,02  | 0,03  | 0,01  | 0,57  |   
| Emerging Markets  | 0,01  | 0,44***  | 0,01  | -0,01  | 0,01  | 0,65  |   
| Global Macro  |  0,03***  | 0,42*** | 0,01  | 0,04*  | -0,01  | 0,57  |   
| Managed Futures  | 0,01  | 0,38***  | -0,01  | -0,01  | 0,01  | 0,58  |   
| Convertible Arbitrage  | 0,01  | 0,41***  | 0,03*  | 0,01  | 0,01  | 0,65  |   
| Equity Market Neutral  | 0,01  | 0,40***  | 0,02  | 0,01  | 0,01  | 0,70  |   
| Event Driven  | 0,01  | 0,40***  | 0,06***  | 0,02  | 0,01  | 0,67  |   
| Distressed Securities  | 0,02**  | 0,39***  | 0,06***  | 0,03**  | 0,01  | 0,67  |   
| Fixed Income Arbitrage  | 0,01  | 0,47***  | 0,02  | 0,01  | 0,01  | 0,70  |   
| Multi-Strategy  | 0,02*  | 0,43***  | 0,05***  | 0,02  | 0,01  | 0,69  |

* Following the authors, S&P 500 is used as a proxy of the market portfolio
* (\*), (\**), (\***) correspond to a 10%, 5% and 1% significance level
* Long/Short Equity, Global Macro, Distressed Securities and Multi-Strategy portfolios show a significant extra-performance over the market portfolio

#### 3. Alpha in the Fung & Hsieh risk factor model

* Unfortunately, not a single portfolio shows a statistically significant alpha coefficient
* Compared to the previous model, it's possible to assume that the eight risk factors considered by the authors are no longer able to describe hedge funds risk, or at least portfolios containing hedge funds

#### 4. Ex-post performance

![ex post](https://user-images.githubusercontent.com/78954578/113895606-6c87ec80-97c9-11eb-8dcb-8c0025bc4c6e.jpg)

| Ex-post Analysis  | Max Drawdown  | Calmar Ratio  |   
|:--|:-:|:-:|
| Long/Short Equity  | -27,63%  | 0,020  |   
| Emerging Markets  | -32,19%  | 0,015  |   
| Global Macro  | -30,48%  | 0,021  |   
| Managed Futures  | -28,79%  | 0,016  |   
| Convertible Arbitrage  | -33,49%  | 0,014  |   
| Equity Market Neutral  | -36,32%  | 0,013  |   
| Event Driven  | -29,84%  | 0,017  |   
| Distressed Securities  | -31,39%  | 0,017  |   
| Fixed Income Arbitrage  | -35,49%  | 0,013  |   
| Multi-Strategy  | -36,05%  | 0,015  |   
| Bond/Equity/Commodities  | -33,34%  | 0,014  |

* Once again, Global Macro and Long/Short Equity portfolios are the most efficient ones 

## Conclusions <a id="5"></a>
* The ability of the different hedge fund strategies to decorrelate from the markets doesn't seem to be a key feature when it comes to deliver a higher portfolio performance
* Hedge funds appear more useful to boost the overall performance, rather than to diversify an investment portfolio
* The most efficient strategies, in terms of risk-adjusted performance and maximum drawdown reduction, are Global Macro, Long/Short Equity and Distressed Securities
* Results obtained must be contextualized in the historical period observed: the strong bull market phases have definitely benefited directional strategies, like Long/Short and Global Macro, who are able to exploit strong market trends

### References
- Asness C., Krail R., Liew J. (2001). Alternative Investments: Do Hedge Funds Hedge?. Journal of Portfolio Management.
- Brooks C., Kat H. M. (2001). The Statistical Properties of Hedge Fund Index Returns and Their Implications for Investors. Working Paper, Alternative Investments Research Centre.
- Davies R. J., Kat H. M., Lu S. (2009). Fund of Hedge Funds Portfolio Selection: A Multiple-Objective Approach. Journal of Derivatives & Hedge Funds. 
- Fung H., Hsieh D. A. (2004). Hedge Fund Benchmarks: A Risk Based Approach. Financial Analysts Journal.
- Lo A. W. (2002). The Statistics of Sharpe Ratios. Financial Analysts Journal.
