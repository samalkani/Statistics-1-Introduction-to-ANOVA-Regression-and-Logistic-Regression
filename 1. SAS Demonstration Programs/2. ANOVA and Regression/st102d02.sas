/*st102d02.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st102d02_Output.pdf";

ods graphics;

proc glm data=STAT1.ameshousing3 plots=diagnostics;
    class Heating_QC;
    model SalePrice=Heating_QC;
	means Heating_QC / hovtest=levene;
    format Heating_QC $Heating_QC.;
    title "One-Way ANOVA with Heating Quality as Predictor";
run;
quit;

title;

ods pdf close;



