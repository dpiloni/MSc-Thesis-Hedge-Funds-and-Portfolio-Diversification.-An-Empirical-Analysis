%dataset
lshort=dataset(:,1);
emmkt=dataset(:,2);
globmacro=dataset(:,3);
mngfutures=dataset(:,4);
convarb=dataset(:,5);
eqmneutral=dataset(:,6);
evdriven=dataset(:,7);
distrsec=dataset(:,8);
fixinarb=dataset(:,9);
multi=dataset(:,10);
MSCI=dataset(:,11);
BB=dataset(:,12);
%plot
figure()
%lshort
subplot(2,6,1)
plot(Data,lshort)
title('Long/Short Equity')
%emmkt
subplot(2,6,2)
plot(Data,emmkt)
title('Emerging Markets')
%globmacro
subplot(2,6,3)
plot(Data,globmacro)
title('Global Macro')
%mngfutures
subplot(2,6,4)
plot(Data,mngfutures)
title('Managed Futures')
%convarb
subplot(2,6,5)
plot(Data,convarb)
title('Convertible Arbitrage')
%eqmneutral
subplot(2,6,6)
plot(Data,eqmneutral)
title('Equity Market Neutral')
%evdriven
subplot(2,6,7)
plot(Data,evdriven)
title('Event Driven')
%distrsce
subplot(2,6,8)
plot(Data,distrsec)
title('Distressed Securities')
%fixinarb
subplot(2,6,9)
plot(Data,fixinarb)
title('Fixed Income Arbitrage')
%multi
subplot(2,6,10)
plot(Data,multi)
title('Multistrategy');
%sep500
subplot(2,6,11)
plot(Data,MSCI)
title('MSCI ACWI');
%10year
subplot(2,6,12)
plot(Data,BB)
title('Bloomberg Barclays Global Aggregate');
%statistiche descrittive
t=array2table(dataset);
t2=varfun(@(x) [min(x); max(x); median(x); mean(x); sqrt(var(x));...
    skewness(x); kurtosis(x)],t);
t2.Properties.RowNames={'min' 'max' 'median' 'mean' 'dev.std' 'asimmetria'...
    'curtosi'};
t2.Properties.VariableNames={'lshort' 'emmkt' 'globmacro' 'mngfutures'...
    'convarb' 'eqmneutral' 'evdriven' 'distrsec' 'fixinarb' 'multi'};

%normality:graphs & JBtest
%graph comparison with normal distrib
figure()
%lshort
subplot(2,5,1)
histfit(lshort,50,'normal')
title('Long/Short Equity')
%emmkt
subplot(2,5,2)
histfit(emmkt,50,'normal')
title('Emerging Markets')
%globmacro
subplot(2,5,3)
histfit(globmacro,50,'normal')
title('Global Macro')
%mngfutures
subplot(2,5,4)
histfit(mngfutures,50,'normal')
title('Managed Futures')
%convarb
subplot(2,5,5)
histfit(convarb,50,'normal')
title('Convertible Arbitrage')
%eqmneutral
subplot(2,5,6)
histfit(eqmneutral,50,'normal')
title('Equity Market Neutral')
%evdriven
subplot(2,5,7)
histfit(evdriven,50,'normal')
title('Event Driven')
%distrsec
subplot(2,5,8)
histfit(distrsec,50,'normal')
title('Distressed Securities')
%fixinarb
subplot(2,5,9)
histfit(fixinarb,50,'normal')
title('Fixed Income Arbitrage')
%multi
subplot(2,5,10)
histfit(multi,50,'normal')
title('Multistrategy')

%qqplot
figure()
%lshort
subplot(2,5,1)
qqplot(lshort)
title('Long/Short Equity')
%emmkt
subplot(2,5,2)
qqplot(emmkt)
title('Emerging Markets')
%globmacro
subplot(2,5,3)
qqplot(globmacro)
title('Global Macro')
%mngfutures
subplot(2,5,4)
qqplot(mngfutures)
title('Managed Futures')
%convarb
subplot(2,5,5)
qqplot(convarb)
title('Convertible Arbitrage')
%eqmneutral
subplot(2,5,6)
qqplot(eqmneutral)
title('Equity Market Neutral')
%evdriven
subplot(2,5,7)
qqplot(evdriven)
title('Event Driven')
%distrsec
subplot(2,5,8)
qqplot(distrsec)
title('Distressed Securities')
%fixinarb
subplot(2,5,9)
qqplot(fixinarb)
title('Fixed Income Arbitrage')
%multi
subplot(2,5,10)
qqplot(multi)
title('Multistrategy')

%JB test
[h,p,jbstat,critval] = jbtest(lshort);
t=[h;p;jbstat;critval];
[h2,p2,jbstat2,critval2] = jbtest(emmkt);
t2=[h2;p2;jbstat2;critval2];
[h3,p3,jbstat3,critval3] = jbtest(globmacro);
t3=[h3;p3;jbstat3;critval3];
[h4,p4,jbstat4,critval4] = jbtest(mngfutures);
t4=[h4;p4;jbstat4;critval4];
[h5,p5,jbstat5,critval5] = jbtest(convarb);
t5=[h5;p5;jbstat5;critval5];
[h6,p6,jbstat6,critval6] = jbtest(eqmneutral);
t6=[h6;p6;jbstat6;critval6];
[h7,p7,jbstat7,critval7] = jbtest(evdriven);
t7=[h7;p7;jbstat7;critval7];
[h8,p8,jbstat8,critval8] = jbtest(distrsec);
t8=[h8;p8;jbstat8;critval8];
[h9,p9,jbstat9,critval9] = jbtest(fixinarb);
t9=[h9;p9;jbstat9;critval9];
[h10,p10,jbstat10,critval10] = jbtest(multi);
t10=[h10;p10;jbstat10;critval10];
tab=[t t2 t3 t4 t5 t6 t7 t8 t9 t10];
tab=array2table(tab);
tab.Properties.RowNames={'h' 'p-value' 'jbstat' 'critval'};
tab.Properties.VariableNames={'lshort' 'emmkt' 'globmacro' 'mngfutures'...
    'convarb' 'eqmneutral' 'evdriven' 'distrsec' 'fixinarb' 'multi'};

%autocorrelation
%autocorrelograms
figure()
%lshort
subplot(2,5,1)
autocorr(lshort,'NumLags',10)
title('Long/Short Equity')
%emmkt
subplot(2,5,2)
autocorr(emmkt,'NumLags',10)
title('Emerging Markets')
%globmacro
subplot(2,5,3)
autocorr(globmacro,'NumLags',10)
title('Global Macro')
%mngfutures
subplot(2,5,4)
autocorr(mngfutures,'NumLags',10)
title('Managed Futures')
%convarb
subplot(2,5,5)
autocorr(convarb,'NumLags',10)
title('Convertible Arbitrage')
%eqmneutral
subplot(2,5,6)
autocorr(eqmneutral,'NumLags',10)
title('Equity Market Neutral')
%evdriven
subplot(2,5,7)
autocorr(evdriven,'NumLags',10)
title('Event Driven')
%distrsec
subplot(2,5,8)
autocorr(distrsec,'NumLags',10)
title('Distressed Securities')
%fixinarb
subplot(2,5,9)
autocorr(fixinarb,'NumLags',10)
title('Fixed Income Arbitrage')
%multi
subplot(2,5,10)
autocorr(multi,'NumLags',10)
title('Multistrategy')

%ljung-box test
[h,p,jbstat,critval] = lbqtest(lshort);
t=[h;p;jbstat;critval];
[h2,p2,jbstat2,critval2] = lbqtest(emmkt);
t2=[h2;p2;jbstat2;critval2];
[h3,p3,jbstat3,critval3] = lbqtest(globmacro);
t3=[h3;p3;jbstat3;critval3];
[h4,p4,jbstat4,critval4] = lbqtest(mngfutures);
t4=[h4;p4;jbstat4;critval4];
[h5,p5,jbstat5,critval5] = lbqtest(convarb);
t5=[h5;p5;jbstat5;critval5];
[h6,p6,jbstat6,critval6] = lbqtest(eqmneutral);
t6=[h6;p6;jbstat6;critval6];
[h7,p7,jbstat7,critval7] = lbqtest(evdriven);
t7=[h7;p7;jbstat7;critval7];
[h8,p8,jbstat8,critval8] = lbqtest(distrsec);
t8=[h8;p8;jbstat8;critval8];
[h9,p9,jbstat9,critval9] = lbqtest(fixinarb);
t9=[h9;p9;jbstat9;critval9];
[h10,p10,jbstat10,critval10] = lbqtest(multi);
t10=[h10;p10;jbstat10;critval10];
tab=[t t2 t3 t4 t5 t6 t7 t8 t9 t10];
tab=array2table(tab);
tab.Properties.RowNames={'h' 'p-value' 'jbstat' 'critval'};
tab.Properties.VariableNames={'lshort' 'emmkt' 'globmacro' 'mngfutures'...
    'convarb' 'eqmneutral' 'evdriven' 'distrsec' 'fixinarb' 'multi'};
%AR(1) estimates
%PACF
figure()
%lshort
subplot(2,5,1)
parcorr(lshort,'NumLags',10)
title('Long/Short Equity')
%emmkt
subplot(2,5,2)
parcorr(emmkt,'NumLags',10)
title('Emerging Markets')
%globmacro
subplot(2,5,3)
parcorr(globmacro,'NumLags',10)
title('Global Macro')
%mngfutures
subplot(2,5,4)
parcorr(mngfutures,'NumLags',10)
title('Managed Futures')
%convarb
subplot(2,5,5)
parcorr(convarb,'NumLags',10)
title('Convertible Arbitrage')
%eqmneutral
subplot(2,5,6)
parcorr(eqmneutral,'NumLags',10)
title('Equity Market Neutral')
%evdriven
subplot(2,5,7)
parcorr(evdriven,'NumLags',10)
title('Event Driven')
%distrsec
subplot(2,5,8)
parcorr(distrsec,'NumLags',10)
title('Distressed Securities')
%fixinarb
subplot(2,5,9)
parcorr(fixinarb,'NumLags',10)
title('Fixed Income Arbitrage')
%multi
subplot(2,5,10)
parcorr(multi,'NumLags',10)
title('Multistrategy')

%AR(1)
%lshort
lshort_lag=lagmatrix(lshort,1);
lm=fitlm(lshort_lag,lshort);
%emmkt
emmkt_lag=lagmatrix(emmkt,1);
lm=fitlm(emmkt_lag,emmkt);
%globmacro
globmacro_lag=lagmatrix(globmacro,1);
lm=fitlm(globmacro_lag,globmacro);
%mngfutures
mngfutures_lag=lagmatrix(mngfutures,1);
lm=fitlm(mngfutures_lag,mngfutures);
%convarb
convarb_lag=lagmatrix(convarb,1);
lm=fitlm(convarb_lag,convarb);
%eqmneutral
eqmneutral_lag=lagmatrix(eqmneutral,1);
lm=fitlm(eqmneutral_lag,eqmneutral);
%evdriven
evdriven_lag=lagmatrix(evdriven,1);
lm=fitlm(evdriven_lag,evdriven);
%distrsec
distrsec_lag=lagmatrix(distrsec,1);
lm=fitlm(distrsec_lag,distrsec);
%fixinarb
fixinarb_lag=lagmatrix(fixinarb,1);
lm=fitlm(fixinarb_lag,fixinarb);
%multi
multi_lag=lagmatrix(multi,1);
lm=fitlm(multi_lag,multi);