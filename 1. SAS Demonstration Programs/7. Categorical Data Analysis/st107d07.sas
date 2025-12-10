/*st107d07.sas*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st107d07_Output.pdf";

ods select none;
proc logistic data=STAT1.ameshousing3;
    class Fireplaces(ref='0') Lot_Shape_2(ref='Regular') / param=ref;
    model Bonus(event='1')=Basement_Area|Lot_Shape_2 Fireplaces;
    units Basement_Area=100;
	store out=isbonus;
run;
ods select all;


data newhouses;
	length Lot_Shape_2 $9;
	input Fireplaces Lot_Shape_2 $ Basement_Area;
	datalines;
	0  Regular    1060
	2  Regular     775
	2  Irregular  1100
	1  Irregular   975
	1  Regular     800
	;
run;

proc plm restore=isbonus;
	score data=newhouses out=scored_houses / ILINK;
	title 'Predictions using PROC PLM';
run;

proc print data=scored_houses;
run;

ods pdf close;
