/*st102s04.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st102s04_Output.pdf";

ods graphics on;

proc reg data=STAT1.BodyFat2;
    model PctBodyFat2=Weight;
    title "Regression of % Body Fat on Weight";
run;
quit;

title;

ods pdf close;

