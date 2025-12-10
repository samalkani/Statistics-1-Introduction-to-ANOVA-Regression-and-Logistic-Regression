libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st104d01_Output.pdf";

%let interval=Gr_Liv_Area Basement_Area Garage_Area Deck_Porch_Area 
         Lot_Area Age_Sold Bedroom_AbvGr Total_Bathroom ;

/*st104d01.sas*/
ods graphics on; 
proc glmselect data=STAT1.ameshousing3 plots=all;
	STEPWISE: model SalePrice = &interval / selection=stepwise details=steps select=SL slstay=0.05 slentry=0.05;
	title "Stepwise Model Selection for SalePrice - SL 0.05";
run;


/*Optional Code that will execute forward and backward selection
  Each with slentry and slstay = 0.05.

proc glmselect data=STAT1.ameshousing3 plots=all;
	FORWARD: model SalePrice = &interval / selection=forward details=steps select=SL slentry=0.05;
	title "Forward Model Selection for SalePrice - SL 0.05";
run;

proc glmselect data=STAT1.ameshousing3 plots=all;
	BACKWARD: model SalePrice = &interval / selection=backward details=steps select=SL slstay=0.05;
	title "Backward Model Selection for SalePrice - SL 0.05";
run; */

ods pdf close;


*/
