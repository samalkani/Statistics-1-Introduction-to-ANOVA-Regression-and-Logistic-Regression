/*st107d03.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st107d03_Output.pdf";

ods graphics off;
proc freq data=STAT1.ameshousing3;
    tables Fireplaces*Bonus / chisq measures cl;
    format Bonus bonusfmt.;
    title 'Ordinal Association between FIREPLACES and BONUS?';
run;

ods graphics on;

ods pdf close;
