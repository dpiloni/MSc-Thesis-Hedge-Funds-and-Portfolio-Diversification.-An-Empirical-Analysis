# MSc Thesis | Hedge fund and Portfolio Diversification. An Empirical Analysis
### (Original title: Gli hedge fund e la diversificazione di portafoglio. Un'analisi empirica)

NOTE: the original text is provided in Italian language. However, in this file I present all the key findings of the analysis.

## Overview
* Identified which hedge fund strategies are able to decorrelate from stock and bond markets, especially during bear market phases, and if this feature can deliver benefits to a diversified portfolio (increase of risk-adjusted performance and/or maximum drawdown reduction)
* Managed Futures  and  Equity Market Neutral are the only strategies that show negative or low correlation during market crises
* Decorrelation ability is not a key feature in diversified portfolios: hedge funds seem more useful to boost performance, rather than to represent a well diversified asset class.

## Table of Contents
<div >

1.  [Introduction](#1)<br>
2.  [Data](#2) <br>
3.  [Methodology](#3) <br>
4.  [Results](#4) <br>
5.  [Conclusions](#5) <br>
    </div>

## Introduction <a id="1"></a>

## Data <a id="2"></a>
The analysis is performed using monthly data for to the period April 1994 - June 2020 (in US dollars).
In order to measure the different asset classes I use:
* Equity: MSCI All Country World Index
* Bonds: Bloomberg Barclays Global Aggregate
* Commodities: Standard & Poor's GSCI
* Hedge Funds: Credit Suisse Hedge Fund Indexes for every strategy considered
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

## Methodology <a id="3"></a>
In the first step of the analysis, I measure the correlation between hedge fund strategies and traditional markets (stocks and bonds).
Correlation is measured in three different ways:
* Unconditional correlation 
* Conditional correlation, considering bull and bear market phases
* Dynamic correlation, using rolling windows of 36 months.

In the second step, I construct portfolios consisting of equities, bonds, commodities and each of the hedge fund strategies, using multiple objective approach. In particular, I use the Mean-Variance-Skewness-Kurtosis (MVSK) framework by Davies, Kat & Lu (2009).

Finally I measure the performance of the portfolios obtained:
* Risk-adjusted performance, using Sharpe Ratio in the standard and Andrew Lo (2002) version
* Alpha, using Asness (2001) CAPM equation and Fung & Hsieh (2004) risk factor models
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
    <th class="tg-0pky"></th>
    <th class="tg-0pky"></th>
    <th class="tg-0pky"></th>
  </tr>
  <tr>
    <td class="tg-c3ow">MSCI ACWI</td>
    <td class="tg-c3ow">BB Global</td>
    <td class="tg-c3ow">MSI ACWI</td>
    <td class="tg-c3ow">BB Global</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-c3ow">Long/Short Equity</td>
    <td class="tg-c3ow">0,74</td>
    <td class="tg-c3ow">0,18</td>
    <td class="tg-c3ow">0,74</td>
    <td class="tg-c3ow">0,20</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-c3ow">Emerging Markets</td>
    <td class="tg-c3ow">0,64</td>
    <td class="tg-c3ow"></td>
    <td class="tg-c3ow"></td>
    <td class="tg-c3ow"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">Global Macro</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">Managed Futures</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">Convertible Arbitrage</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">Equity Market Neutral</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">Event Driven</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
</tbody>
</table>

* Higher average correlation with the stock market (0,47) compared to the bond market (0,14)
* Managed Futures is the only strategy to show negative correlation with the stock market
* Highest correlations are estimated for Long/Short Equity and Event Driven strategies
     
    
<p align="center">
  <img src="https://user-images.githubusercontent.com/78954578/113745858-f8d0db80-9705-11eb-8355-95f6f541d536.jpg" width="700" height="300">
</p>

## Conclusions <a id="5"></a>
