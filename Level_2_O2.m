x = xlsread('C:\Documents and Settings\Erfan Mostafid\My Documents\Landfill_Contours\Aerobic_Cell_Data','Level_2_O2','b5:b28');
y = xlsread('C:\Documents and Settings\Erfan Mostafid\My Documents\Landfill_Contours\Aerobic_Cell_Data','Level_2_O2','d5:d28');
z = xlsread('C:\Documents and Settings\Erfan Mostafid\My Documents\Landfill_Contours\Aerobic_Cell_Data','Level_2_O2','e5:e28');
maxeasting = xlsread('C:\Documents and Settings\Erfan Mostafid\My Documents\Landfill_Contours\Aerobic_Cell_Data','Level_2_O2','g6');
mineasting = xlsread('C:\Documents and Settings\Erfan Mostafid\My Documents\Landfill_Contours\Aerobic_Cell_Data','Level_2_O2','g7');
maxnorthing = xlsread('C:\Documents and Settings\Erfan Mostafid\My Documents\Landfill_Contours\Aerobic_Cell_Data','Level_2_O2','h6');
minnorthing = xlsread('C:\Documents and Settings\Erfan Mostafid\My Documents\Landfill_Contours\Aerobic_Cell_Data','Level_2_O2','h7');
teasting = mineasting-10:10:maxeasting+10;
tnorthing = minnorthing-10:10:maxnorthing+10;
[eastingI,northingI] = meshgrid(teasting,tnorthing);
ZI = griddata(x,y,z,eastingI,northingI);
mesh(eastingI,northingI,ZI),
plot3(x,y,z,'o'), hold 
contour(eastingI,northingI,ZI,50), hold off
axis([300 600 430 650])
