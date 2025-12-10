/*st104s02.sas*/ /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st104s02_Output.pdf";

ods graphics on;
proc glmselect data=STAT1.bodyfat2 plots=all;
	STEPWISESBC: model PctBodyFat2 = Age Weight Height Neck Chest Abdomen
                                    Hip Thigh Knee Ankle Biceps Forearm Wrist
                                    / SELECTION=STEPWISE SELECT=SBC;
	title 'SBC STEPWISE Selection with PctBodyFat2';
run;

/*st104s02.sas*/ /*Part B*/
proc glmselect data=STAT1.bodyfat2 plots=all;
	STEPWISEAIC: model PctBodyFat2 = Age Weight Height Neck Chest Abdomen
                                    Hip Thigh Knee Ankle Biceps Forearm Wrist
                                    / SELECTION=STEPWISE SELECT=AIC;
	title 'AIC STEPWISE Selection with PctBodyFat2';
run;

ods pdf close;