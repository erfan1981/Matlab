function tor = VIPS(betha,AFP)
%VIPS model predictions
%TP = xlsread('C:\Documents and Settings\erfan\My Documents\Research Questions\Undisturbed Samples - MQ BBC Penman Call Air Permeability VIPS models\Models Predictions(1)','Reg. # 1 Top Mid DONE','M7:M11');
tor = (AFP(:,1)-(AFP(:,2)-AFP(:,1))./(AFP(:,2)- betha(1)).*betha(1)).^betha(2);
