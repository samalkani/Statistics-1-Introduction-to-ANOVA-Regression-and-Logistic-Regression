/*st107s02.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st107s02_Output.pdf";


ods graphics on;
proc logistic data=STAT1.safety plots(only)=(effect oddsratio);
    model Unsafe(event='1')=Weight / clodds=pl;
    title 'LOGISTIC MODEL (1):Unsafe=Weight';
run;

ods pdf close;