% Non-linear fit without dry point
AFP = ones(5,2);
AFPor = xlsread('C:\Documents and Settings\erfan\Desktop\Models Predictions - VIPS Graphs','Aged Greenwaste','I6:I11');
TORT = xlsread('C:\Documents and Settings\erfan\Desktop\Models Predictions - VIPS Graphs','Aged Greenwaste','J6:J11');
TP = xlsread('C:\Documents and Settings\erfan\Desktop\Models Predictions - VIPS Graphs','Aged Greenwaste','H6:H11');
AFP(:,1) = AFPor;
AFP(:,2) = TP;

betha = [.3 3];
[beta,R,J,Sigma,MSE] = nlinfit(AFP,TORT,@VIPS,betha);
beta =real(beta);
R=real(R);
Sigma =real(Sigma);
J=real(J);
ci = nlparci(beta,R,'covar',Sigma);
newAFP = AFP;
[ypred, delta]=nlpredci(@VIPS,newAFP, beta, R, J);
beta
ci
ypred
delta