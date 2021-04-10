%%%%%%%%%%%%%%%%%%%%%%%%%
%Moving Correlation Plot%
%%%%%%%%%%%%%%%%%%%%%%%%%
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
%dataset Unsmoothed
u_lshort=datasetU(:,1);
u_emmkt=datasetU(:,2);
u_globmacro=datasetU(:,3);
u_mngfutures=datasetU(:,4);
u_convarb=datasetU(:,5);
u_eqmneutral=datasetU(:,6);
u_evdriven=datasetU(:,7);
u_distrsec=datasetU(:,8);
u_fixinarb=datasetU(:,9);
u_multi=datasetU(:,10);

%Graph
figure()
%lshort
subplot(2,5,1)
plot(Data,lshort,Data,u_lshort,'LineWidth',1.5)
legend('smoothed','unsmoothed','Location','southeast')
title('Long/Short Equity')
%emmkt
subplot(2,5,2)
plot(Data,emmkt,Data,u_emmkt,'LineWidth',1.5)
title('Emerging Markets')
%globmacro
subplot(2,5,3)
plot(Data,globmacro,Data,u_globmacro,'LineWidth',1.5)
title('Global Macro')
%mngfutures
subplot(2,5,4)
plot(Data,mngfutures,Data,u_mngfutures,'LineWidth',1.5)
title('Managed Futures')
%convarb
subplot(2,5,5)
plot(Data,convarb,Data,u_convarb,'LineWidth',1.5)
title('Convertible Arbitrage')
%eqmneutral
subplot(2,5,6)
plot(Data,eqmneutral,Data,u_eqmneutral,'LineWidth',1.5)
title('Equity Market Neutral')
%evdriven
subplot(2,5,7)
plot(Data,evdriven,Data,u_evdriven,'LineWidth',1.5)
title('Event Driven')
%distrsce
subplot(2,5,8)
plot(Data,distrsec,Data,u_distrsec,'LineWidth',1.5)
legend('smoothed','unsmoothed','Location','southeast')
title('Distressed Securities')
%fixinarb
subplot(2,5,9)
plot(Data,fixinarb,Data,u_fixinarb,'LineWidth',1.5)
title('Fixed Income Arbitrage')
%multi
subplot(2,5,10)
plot(Data,multi,Data,u_multi,'LineWidth',1.5)
title('Multistrategy');





