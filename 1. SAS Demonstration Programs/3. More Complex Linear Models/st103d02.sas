/*st103d02.sas*/  /*Part A*/
libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st103d02_Output.pdf";
ods graphics on;

proc glm data=STAT1.ameshousing3 
         order=internal 
         plots(only)=intplot;
    class Season_Sold Heating_QC;
    model SalePrice = Heating_QC Season_Sold Heating_QC*Season_Sold;
    lsmeans Heating_QC*Season_Sold / diff slice=Heating_QC;
    format Season_Sold Season.;
    store out=interact;
    title "Model with Heating Quality and Season as Interacting Predictors";
run;
quit;

/*st103d02.sas*/  /*Part B*/
proc plm restore=interact plots=all;
    slice Heating_QC*Season_Sold / sliceby=Heating_QC adjust=tukey;
    effectplot interaction(sliceby=Heating_QC) / clm;
run; 

title;

ods pdf close;

