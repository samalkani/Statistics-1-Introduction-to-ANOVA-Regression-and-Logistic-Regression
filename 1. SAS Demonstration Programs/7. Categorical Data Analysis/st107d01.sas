/*st107d01.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st107d01_Output.pdf";

title;
proc format;
    value bonusfmt 1 = "Bonus Eligible"
                   0 = "Not Bonus Eligible"
                  ;
run;

proc freq data=STAT1.ameshousing3;
    tables Bonus Fireplaces Lot_Shape_2
           Fireplaces*Bonus Lot_Shape_2*Bonus/
           plots(only)=freqplot(scale=percent);
    format Bonus bonusfmt.;
run;

proc univariate data=STAT1.ameshousing3 noprint;
    class Bonus;
    var Basement_Area ;
    histogram Basement_Area;
    inset mean std median min max / format=5.2 position=nw;
    format Bonus bonusfmt.;
run;

ods pdf close;
