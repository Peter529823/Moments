function y = moments(R)
% computes first 4 moments:
% mean
% standard deviation
% skewness
% kurtosis

% input R is a T by N array; T observations of N random variables
% output y is N by 4

if size(R,2)>size(R,1), R=R'; end
norm=1; mu=mean(R);
[T,N]=size(R);
y=zeros(N,4);
y(:,1)=mu;
mu=ones(T,1)*mu;
y(:,2)=sqrt(mean((R-mu).^2));
y(:,3)=mean((R-mu).^3);
y(:,4)=mean((R-mu).^4);
if norm
    y(:,3)=y(:,3)./(y(:,2).^3);
    y(:,4)=y(:,4)./(y(:,2).^4);
end

