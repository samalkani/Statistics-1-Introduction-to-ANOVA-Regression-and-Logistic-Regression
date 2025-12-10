/*st101d02.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st101d02_Output.pdf";

ods graphics;

proc ttest data=STAT1.ameshousing3 
           plots(shownull)=interval
           H0=135000;
    var SalePrice;
    title "One-Sample t-test testing whether mean SalePrice=$135,000";
run;

title;

ods pdf close;

