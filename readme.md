Data item of "Contribution of Schools to Covid-19 Pandemic]{Contribution of Schools to Covid-19 Pandemic: Evidence from Czechia" by C. Brom, J. Drbohlav, M. Šmíd and M. Zajíček.

1. Data sources

For the computation, the following data sources have been used

a. Anonymized preson-level public datased of covid infections in Czechia, provided by the Czech ministry of health, available at https://onemocneni-aktualne.mzcr.cz/api/v2/covid-19/osoby.csv

b. Estimated of contact restrictions during the Covid-19 pandemics by PaQ research, publicly available at https://zivotbehempandemie.cz/kontakty

c. Various publicly available data including press releases and public materials by the Czech ministry of education, yuouth and sports.

2. Code

All results are replicable by means of LibreOffice Calc (or, alternatively, Microsoft Excel), Gretl (free econometrics software) and Gnuplot (free graphing software). 

All the inputs are contained in the two following files

data.ods - contains all the input data, their preprocessing, inputs for gretl and Gnuplot and outputs (TeX source of tables and graphs)

gretl.inp - gretl script

rho.plt - gnuplot script

3. Replication 

Preparation: Download data.ods and gretl.inp and change the path to the formes in the first line of the latter accordingly.

Computing the main results: 
A. Run the script gretl.inp
B. From the Icon View of Gretl, copy the values of the scalars into the clipboard (as CSV) by right-clicking on the Scalars icon.
C. Paste the content of the clipboard to the gray rectangle of Results sheet, close and again open the document "data.ods".
D. To display the results in LaTeX, copy the Latex sources for Tables 8, 9. 10, 1 nad 2 from "to tex" sheet. 
E. To get the figures:
  - Export graphs for Figure 1 and Figure 7 from "Results" sheet (around 90th row)
  - Export the graph for Figure 9 from "Work" sheet below
  - Export the graphs for Figures 3 - 6 from "Prevalence" sheet
  - Produce graphs for Figure 2 by gnuplot: for each school level, copy the  corresponding grey area of "Gnuplot.txt" sheet (Column A - kindergartens, Column AA - Primary, Column BA - Lower Sec., Cloumn CA - Upper Sec.) into a newly created file named "gnuplot.txt" and run "rho.plt" in the same folder by gnuplot. The result will be putto "result.eps"
  - To produce Figure 8, change cell B9 of "params" sheet to TRUE and proceed as with Figure 2
  - To get the alternative estimates of $\nu$ given opening that kindergartens increases the ascertainment rate (Section F), check the following Gretl scalars: 
    - "nuf1" and "nuf1std" (the estimate in the modified CC analysis based on model Eq (11) and its std. error) 
    - "nuflin1" and "nuflin1std" (estimate in the linearized CC analysis)


Sensitivity analyisi: Computing the variants infectionsness $d_t$ (Section D): change "Dt type" parameter to 3 (B7 of "Params" sheet) and proceesd as with the main analysis 



