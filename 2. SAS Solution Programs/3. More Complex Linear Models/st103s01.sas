/*st103s01.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st103s01_Output.pdf";

proc sgplot data=STAT1.drug;
    vline DrugDose / group=Disease 
                     stat=mean 
                     response=BloodP 
                     markers;
    format DrugDose dosefmt.;
run; 

/*st103s01.sas*/  /*Part B*/
ods graphics on;

proc glm data=STAT1.drug plots(only)=intplot;
    class DrugDose Disease;
    model BloodP = DrugDose|Disease;
    lsmeans DrugDose*Disease / slice=Disease;
run;
quit;

title;

ods pdf close;

