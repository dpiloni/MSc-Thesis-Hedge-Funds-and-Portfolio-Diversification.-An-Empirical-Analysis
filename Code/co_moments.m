function [mean_ser, varcov, coskewness, cokurtosis] = co_moments( series,select,lambda )
%Calcola le matrici dei co momenti di ordine 2, 3 e 4
%input: series, serie storica dei rendimenti degli n titoli, matrice TxN
%output: varcov, matrice NxN di varianza e covarianza degli n titoli
%output: coskewness, matrice NxN^2 di co-asimmetria degli n titoli
%output: cokurtosis, matrice NxN^3 di co-curtosi degli n titoli
if isa(series,'Fints')
    series=fts2mat(series);
end
i=0;
[T,N]=size(series);
mean_ser=mean(series);
coskew=zeros(N,N^2);
cokurt=zeros(N,N^3);
sm_mean=zeros(1,N,T);
sm_vcov=zeros(N,N,T); 
sm_coskew=zeros(N,N*N,T);
sm_cokurt=zeros(N,N*N*N,T);
s_demeaned=series(:,:)-kron(mean_ser,ones(T,1)); %crea una matrice T*N con generico elemento [a_ij-mu_j]con mu_j media del j_esimo asset
for i=1:N
   for j=i:N
       varcov1(i,j)=(sum((series(:,i)-mean(series(:,i))).*(series(:,j)-mean(series(:,j)))))/(T-1);
       varcov1(j,i)=varcov1(i,j);
   end
end
vcov=1/(T-1)*(s_demeaned)'*(s_demeaned);
for i=1:T
    coskew=coskew+1/(T-1)*(kron(s_demeaned(i,:)'*s_demeaned(i,:),s_demeaned(i,:)));
    cokurt=cokurt+1/(T-1)*(kron(s_demeaned(i,:)',kron(s_demeaned(i,:),kron(s_demeaned(i,:),s_demeaned(i,:)))));
end
if (select==1)
    % Inizializzazione dell'algoritmo di exponential smoothing con momenti
    % campionari
    sm_mean(:,:,1)=mean_ser;
    sm_vcov(:,:,1)=vcov;
    sm_coskew(:,:,1)=coskew;
    sm_cokurt(:,:,1)=cokurt;
    for i=2:T
        sm_mean(:,:,i)=lambda.*sm_mean(:,:,i-1)+(1-lambda).*s_demeaned(i,:);
        sm_vcov(:,:,i)=lambda.*sm_vcov(:,:,i-1)+(1-lambda).*(s_demeaned(i,:))'*(s_demeaned(i,:));
        sm_coskew(:,:,i)=lambda.*sm_coskew(:,:,i-1)+(1-lambda).*(kron(s_demeaned(i,:)'*s_demeaned(i,:),s_demeaned(i,:)));
        sm_cokurt(:,:,i)=(kron(s_demeaned(i,:)',kron(s_demeaned(i,:),kron(s_demeaned(i,:),s_demeaned(i,:)))));
    end
    mean_ser=sm_mean;
    varcov=sm_vcov;
    coskewness=sm_coskew;
    cokurtosis=sm_cokurt;
else
    varcov=vcov;
    coskewness=coskew;
    cokurtosis=cokurt;
end
end