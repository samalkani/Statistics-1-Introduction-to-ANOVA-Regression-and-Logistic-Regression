/*st107d02.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st107d02_Output.pdf";

ods graphics off;
proc freq data=STAT1.ameshousing3;
    tables (Lot_Shape_2 Fireplaces)*Bonus
          / chisq expected cellchi2 nocol nopercent 
            relrisk;
    format Bonus bonusfmt.;
    title 'Associations with Bonus';
run;

ods graphics on;

ods pdf close;
