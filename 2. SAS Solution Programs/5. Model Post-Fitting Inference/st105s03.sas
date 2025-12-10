/*st105s03.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st105s03_Output.pdf";

ods graphics off;
proc reg data=STAT1.BodyFat2;
    FULLMODL: model PctBodyFat2
                  = Age Weight Height
                    Neck Chest Abdomen Hip Thigh
                    Knee Ankle Biceps Forearm Wrist
                  / vif;
    title 'Collinearity -- Full Model';
run;
quit;

ods graphics on;

/*st105s03.sas*/  /*Part B*/
ods graphics off;
proc reg data=STAT1.BodyFat2;
    NOWT: model PctBodyFat2
              = Age Height
                Neck Chest Abdomen Hip Thigh
                Knee Ankle Biceps Forearm Wrist
              / vif;
    title 'Collinearity -- No Weight';
run;
quit;

ods graphics on;

ods pdf close;
