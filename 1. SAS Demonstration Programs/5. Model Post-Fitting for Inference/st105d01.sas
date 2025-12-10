libname STAT1 "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data"; 
libname library "/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/data";

ods pdf file="/home/ajay_malkani0/SAS Basic Statistics e-learning course/EST142/SAS Output/st105d01_Output.pdf";

%let interval=Gr_Liv_Area Basement_Area Garage_Area Deck_Porch_Area 
         Lot_Area Age_Sold Bedroom_AbvGr Total_Bathroom ;

/*st105d01.sas*/  /*Part A*/
ods graphics on;
proc reg data=STAT1.ameshousing3;
    CONTINUOUS: model SalePrice 
                  = &interval;
    title 'SalePrice Model - Plots of Diagnostic Statistics';
run;
quit;


/*st105d01.sas*/  /*Part B*/
proc reg data=STAT1.ameshousing3 
         plots(only)=(QQ RESIDUALBYPREDICTED RESIDUALS);
    CONTINUOUS: model SalePrice 
                  = &interval;
    title 'SalePrice Model - Plots of Diagnostic Statistics';
run;
quit;

ods pdf close;

