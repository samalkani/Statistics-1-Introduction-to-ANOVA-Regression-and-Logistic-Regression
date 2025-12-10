/*st102s02.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st102s02_Output.pdf";

ods graphics;

ods select lsmeans diff diffplot controlplot;
proc glm data=STAT1.Garlic 
         plots(only)=(diffplot(center) controlplot);
    class Fertilizer;
    model BulbWt=Fertilizer;
    Tukey: lsmeans Fertilizer / pdiff=all 
                         adjust=tukey;
    Dunnett:lsmeans Fertilizer / pdiff=control('4') 
                         adjust=dunnett;
    No_Adjust: lsmeans Fertilizer / pdiff=all adjust=t;
    title "Post-Hoc Analysis of ANOVA - Fertilizer as Predictor";
run;
quit;

title;

ods pdf close;

