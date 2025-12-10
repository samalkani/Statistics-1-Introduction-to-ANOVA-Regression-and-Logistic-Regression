/*st106d02.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

%let homefolder=/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data;
libname STAT1 "&homefolder";

%include "&homefolder/_1stat_data.sas";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st106d02_Output.pdf";

proc plm restore=STAT1.amesstore;
    score data=STAT1.ameshousing4 out=scored;
    code file="&homefolder\scoring.sas";
run;

data scored2;
    set STAT1.ameshousing4;
    %include "&homefolder\scoring.sas";
run;

proc compare base=scored compare=scored2 criterion=0.0001;
    var Predicted;
    with P_SalePrice;
run;

ods pdf close;


