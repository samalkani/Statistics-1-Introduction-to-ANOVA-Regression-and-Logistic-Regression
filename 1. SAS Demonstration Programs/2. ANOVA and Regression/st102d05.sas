/*st102d05.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st102d05_Output.pdf";

ods graphics;

proc reg data=STAT1.ameshousing3;
    model SalePrice=Lot_Area;
    title "Simple Regression with Lot Area as Regressor";
run;
quit;

title;

ods pdf close;

