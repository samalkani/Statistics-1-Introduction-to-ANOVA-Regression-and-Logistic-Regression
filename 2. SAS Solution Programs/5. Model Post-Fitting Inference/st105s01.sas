/*st105s01.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st105s01_Output.pdf";

ods graphics / imagemap=on;

proc reg data=STAT1.BodyFat2 
         plots(only)=(QQ RESIDUALBYPREDICTED RESIDUALS);
    FORWARD: model PctBodyFat2 
                  = Abdomen Weight Wrist Forearm;
    id Case;
    title 'FORWARD Model - Plots of Diagnostic Statistics';
run;
quit;

ods pdf close;
