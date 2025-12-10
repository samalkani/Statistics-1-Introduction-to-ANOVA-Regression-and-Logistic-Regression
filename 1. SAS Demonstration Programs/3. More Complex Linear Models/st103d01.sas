/*st103d01.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st103d01_Output.pdf";

ods graphics off;
proc means data=STAT1.ameshousing3
           mean var std nway;
    class Season_Sold Heating_QC;
    var SalePrice;
    format Season_Sold Season.;
    title 'Selected Descriptive Statistics';
run;

/*st103d01.sas*/  /*Part B*/
proc sgplot data=STAT1.ameshousing3;
    vline Season_Sold / group=Heating_QC 
                        stat=mean 
                        response=SalePrice 
                        markers;
    format Season_Sold season.;
run; 

/*st103d01.sas*/  /*Part C*/
ods graphics on;

proc glm data=STAT1.ameshousing3 order=internal;
    class Season_Sold Heating_QC;
    model SalePrice = Heating_QC Season_Sold;
    lsmeans Season_Sold / diff adjust=tukey;
    format Season_Sold season.;
    title "Model with Heating Quality and Season as Predictors";
run;
quit;

title;

ods pdf close;

