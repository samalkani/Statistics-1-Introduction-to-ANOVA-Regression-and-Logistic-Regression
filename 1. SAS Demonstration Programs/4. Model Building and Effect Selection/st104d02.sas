libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st104d02_Output.pdf";

%let interval=Gr_Liv_Area Basement_Area Garage_Area Deck_Porch_Area 
         Lot_Area Age_Sold Bedroom_AbvGr Total_Bathroom ;

/*st104d02.sas*/
ods graphics on;
proc glmselect data=STAT1.ameshousing3 plots=all;
	STEPWISEAIC: model SalePrice = &interval / selection=stepwise details=steps select=AIC;
	title "Stepwise Model Selection for SalePrice - AIC";
run;

proc glmselect data=STAT1.ameshousing3 plots=all;
	STEPWISEBIC: model SalePrice = &interval / selection=stepwise details=steps select=BIC;
	title "Stepwise Model Selection for SalePrice - BIC";
run;

proc glmselect data=STAT1.ameshousing3 plots=all;
	STEPWISEAICC: model SalePrice = &interval / selection=stepwise details=steps select=AICC;
	title "Stepwise Model Selection for SalePrice - AICC";
run;

proc glmselect data=STAT1.ameshousing3 plots=all;
	STEPWISESBC: model SalePrice = &interval / selection=stepwise details=steps select=SBC;
	title "Stepwise Model Selection for SalePrice - SBC";
run;

ods pdf close;
