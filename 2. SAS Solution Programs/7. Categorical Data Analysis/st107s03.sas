/*st107s03.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st107s03_Output.pdf";
ods graphics on;
proc logistic data=STAT1.safety plots(only)=(effect oddsratio);
    class Region (param=ref ref='Asia')
          Size (param=ref ref='3');
    model Unsafe(event='1')=Weight Region Size / clodds=pl;
    title 'LOGISTIC MODEL (2):Unsafe=Weight Region Size';
run;

ods pdf close;
