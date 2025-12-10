/*st104s01.sas*/ /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st104s01_Output.pdf";

ods graphics on;
proc glmselect data=STAT1.bodyfat2 plots=all;
	STEPWISESL: model PctBodyFat2 = Age Weight Height Neck Chest Abdomen
                                    Hip Thigh Knee Ankle Biceps Forearm Wrist
                                    / SELECTION=STEPWISE SELECT=SL;
	title 'SL STEPWISE Selection with PctBodyFat2';
run;

/*st104s01.sas*/ /*Part B*/
proc glmselect data=STAT1.bodyfat2 plots=all;
	FORWARDSL: model PctBodyFat2 = Age Weight Height Neck Chest Abdomen
                                    Hip Thigh Knee Ankle Biceps Forearm Wrist
                                    / SELECTION=FORWARD SELECT=SL;
	title 'SL FORWARD Selection with PctBodyFat2';
run;

/*st104s01.sas*/ /*Part C*/
proc glmselect data=STAT1.bodyfat2 plots=all;
	FORWARDSL: model PctBodyFat2 = Age Weight Height Neck Chest Abdomen
                                    Hip Thigh Knee Ankle Biceps Forearm Wrist
                                    / SELECTION=FORWARD SELECT=SL SLENTRY=0.05;
	title 'SL FORWARD (0.05) Selection with PctBodyFat2';	
run;

ods pdf close;
