/*st102d04.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st102d04_Output.pdf";


%let interval=Gr_Liv_Area Basement_Area Garage_Area Deck_Porch_Area 
         Lot_Area Age_Sold Bedroom_AbvGr Total_Bathroom;

ods graphics / reset=all imagemap;
proc corr data=STAT1.AmesHousing3 rank
          plots(only)=scatter(nvar=all ellipse=none);
   var &interval;
   with SalePrice;
   id PID;
   title "Correlations and Scatter Plots with SalePrice";
run;

title;

/*st102d04.sas*/  /*Part B*/
ods graphics off;
proc corr data=STAT1.AmesHousing3 
          nosimple 
          best=3;
   var &interval;
   title "Correlations and Scatter Plot Matrix of Predictors";
run;

title;

ods pdf close;
