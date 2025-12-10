/*st102s01.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st102s01_Output.pdf";

proc means data=STAT1.Garlic; 
   var BulbWt;
   class Fertilizer;
   title 'Descriptive Statistics of BulbWt by Fertilizer';
run;

proc sgplot data=STAT1.Garlic;
    vbox BulbWt / category=Fertilizer 
                  connect=mean;
    title "Bulb Weight Differences across Fertilizers";
run;

title;

/*st102s01.sas*/  /*Part B*/
ods graphics;

proc glm data=STAT1.Garlic plots=diagnostics;
    class Fertilizer;
    model BulbWt=Fertilizer;
    means Fertilizer / hovtest=levene;
    title "One-Way ANOVA with Fertilizer as Predictor";
run;
quit;

title;

ods pdf close;

