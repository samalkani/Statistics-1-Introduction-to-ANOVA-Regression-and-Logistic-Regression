/*st101s02.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output Solutions/st101s02_Output.pdf";

ods graphics;
proc ttest data=STAT1.German plots(shownull)=interval;
   class Group;
   var Change;
   title "German Grammar Training, Comparing Treatment to Control";
run;

title;

ods pdf close;
