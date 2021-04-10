%datasetMDD
lshort=datasetMDD(:,1);
emmkt=datasetMDD(:,2);
globmacro=datasetMDD(:,3);
mngfutures=datasetMDD(:,4);
convarb=datasetMDD(:,5);
eqmneutral=datasetMDD(:,6);
evdriven=datasetMDD(:,7);
distrsec=datasetMDD(:,8);
fixinarb=datasetMDD(:,9);
multi=datasetMDD(:,10);
bondequity=datasetMDD(:,11);
%graphs
%lshort
p=plot(Data,lshort,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Long/Short Equity Portfolio')
%emmkt
p=plot(Data,emmkt,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Emerging Markets Portfolio')
%globmacro
p=plot(Data,globmacro,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Global Macro Portfolio')
%mngfutures
p=plot(Data,mngfutures,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Managed Futures Portfolio')
%convarb
p=plot(Data,convarb,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Convertible Arbitrage Portfolio')
%eqmneutral
p=plot(Data,eqmneutral,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Equity Market Neutral Portfolio')
%evdriven
p=plot(Data,evdriven,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Event Driven Portfolio')
%distrsec
p=plot(Data,distrsec,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Distressed Securities Portfolio')
%fixinarb
p=plot(Data,fixinarb,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Fixed Income Arbitrage Portfolio')
%multi
p=plot(Data,multi,Data,bondequity);
p(1).LineWidth=2;
legend('hedge','equity/bond/commodities','Location','southeast')
title('Multistrategy Portfolio');
