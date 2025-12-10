/*st103s02.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st103s02_Output.pdf";

ods graphics off;
proc reg data=STAT1.BodyFat2;
    model PctBodyFat2=Age Weight Height
          Neck Chest Abdomen Hip Thigh
          Knee Ankle Biceps Forearm Wrist;
    title 'Regression of PctBodyFat2 on All '
          'Predictors';
run;
quit;

/*st103s02.sas*/  /*Part B*/
proc reg data=STAT1.BodyFat2;
    model PctBodyFat2=Age Weight Height
          Neck Chest Abdomen Hip Thigh
               Ankle Biceps Forearm Wrist;
    title 'Regression of PctBodyFat2 on All '
          'Predictors, Minus Knee';
run;
quit;

/*st103s02.sas*/  /*Part C*/
proc reg data=STAT1.BodyFat2;
    model PctBodyFat2=Age Weight Height
          Neck       Abdomen Hip Thigh
               Ankle Biceps Forearm Wrist;
    title 'Regression of PctBodyFat2 on All '
          'Predictors, Minus Knee, Chest';
run;
quit;

ods pdf close;
