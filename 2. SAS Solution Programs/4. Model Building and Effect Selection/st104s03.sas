/*st104s03.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st104s03_Output.pdf";

ods graphics / imagemap=on;

proc reg data=STAT1.BodyFat2 plots(only)=(cp);
   model PctBodyFat2=Age Weight Height
         Neck Chest Abdomen Hip Thigh
         Knee Ankle Biceps Forearm Wrist
         / selection=cp best=60;
   title "Using Mallows Cp for Model Selection";
run;
quit;

ods pdf close;
