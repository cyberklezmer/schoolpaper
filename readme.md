
**Contribution of Schools to Covid-19 Pandemic: Evidence from Czechia**

C. Brom, J. Drbohlav, M. Šmíd and M. Zajíček.

*data item*


**Data sources**

For the computation, the following data sources have been used
 - Anonymized preson-level public dataset of covid infections in
   Czechia, provided by the Czech Ministry of Health, available at
   https://onemocneni-aktualne.mzcr.cz/api/v2/covid-19/osoby.csv  
 - Estimates of contact restrictions during the Covid-19 pandemics by
   PaQ research, publicly available at
   https://zivotbehempandemie.cz/kontakty
  - Various publicly available data including press releases and
   public materials by the Czech Ministry of Education, Yuouth and
   Sports.

**Code**

All results are replicable by means of LibreOffice Calc (or, alternatively, Microsoft Excel), Gretl (free statistical software) and Gnuplot (free graphing software). 
All the inputs and code are contained in the following files
 1. data.ods - contains all the input data, their preprocessing, inputs for Gretl and Gnuplot and outputs (LaTeX source of tables and graphs)
 2. gretl.inp - gretl script
 3. rho.plt - gnuplot script

**Preparation** 

Download data.ods, gretl.inp and rho.plt and change the path data.ods in the first line of gretl.inp.

**Computation** 

1. Run the script gretl.inp
2. From the Icon View of Gretl, copy the values of the scalars into the clipboard (as CSV) by right-clicking on the Scalars icon.
3. Paste the content of the clipboard to the gray rectangle of "Results" sheet of data.ods, close and again open "data.ods".
4. The Latex sources for Tables 8, 9. 10, 1 and 2 are in "to tex" sheet. 
5. To get the figures:
  - Export graphs for Figure 1 and Figure 7 from "Results" sheet (below, around 90th row)
  - Export the graph for Figure 9 from "Work" sheet (below)
  - Export the graphs for Figures 3 - 6 from "Prevalence" sheet
  - Produce graphs for Figure 2 by gnuplot: for each school level, copy the  corresponding grey area of "Gnuplot.txt" sheet (Column A - kindergartens, Column AA - Primary, Column BA - Lower Sec., Column CA - Upper Sec.) into a newly created file named "gnuplot.txt" and run "rho.plt" in the same folder by gnuplot. The result will be output to "result.eps"
  - To produce Figure 8, change cell B9 of "params" sheet to TRUE and proceed as with Figure 2
  - To get the alternative estimates of $\nu$ given that opening kindergartens increases the ascertainment rate (Section F), check the following Gretl scalars: 
    - "nuf1" and "nuf1std" (the estimate by the modified CC analysis based on model Eq (11) and its std. error) 
    - "nuflin1" and "nuflin1std" (estimate in the linearized CC analysis)


**Computing the variants infectionsness $d_t$ (Section D)**

Change "dt type" parameter to 3 (B7 of "Params" sheet) and proceesd as with the main analysis 


