cd /Users/Tupin/Documents/UnilMsc/Msc2_I/PAAC/Projet/esc-paac-2021-projet/generated/Stata

//Importer l'Excel
import excel data_stata.xlsx , firstrow clear

// Renommer les variables
rename Année_mois am
rename Violssurdesmajeures viol_maj
rename Violssurdesmineures viol_min
rename Harcèlementssexuelsetautresa har_maj
rename F har_min
rename Atteintessexuelles atteintes_sex
rename Année year
rename Mois month

//Trier les dates dans l'ordre croissant
sort am
//browse

//Définir des dates sous la forme année - mois 
gen date = tm(2000m1)+ _n-1  
format %tm date              //show date in quarter format
tsset date                   //define date as time serie
browse


//Régressions
regress viol_maj date
estadd ysumm
eststo res1

regress viol_min date
estadd ysumm
eststo res2

regress har_maj date
estadd ysumm
eststo res3

regress har_min date
estadd ysumm
eststo res4

regress atteintes_sex date
estadd ysumm
eststo res5

//écriture dans un fichier LaTeX pour la mise en forme sur Overleaf
esttab res1 using table1.tex , tex replace b(3) se(3) starlevels(* 0.1 ** 0.05 *** 0.01) nomtitle ///
 stat(N r2_a ymean ysd, fmt(0 3 2 2) label("Nr. obs." "Adj. R2" "Mean (dep. var.)" "SD (dep. var.)")) ///
 coeflabel(viol_maj "Viols sur majeur(e)s" date "Date")
 
esttab res2 using table2.tex , tex replace b(3) se(3) starlevels(* 0.1 ** 0.05 *** 0.01) nomtitle ///
 stat(N r2_a ymean ysd, fmt(0 3 2 2) label("Nr. obs." "Adj. R2" "Mean (dep. var.)" "SD (dep. var.)")) ///
 coeflabel(viol_maj "Viols sur majeur(e)s" date "Date")

esttab res3 using table3.tex , tex replace b(3) se(3) starlevels(* 0.1 ** 0.05 *** 0.01) nomtitle ///
 stat(N r2_a ymean ysd, fmt(0 3 2 2) label("Nr. obs." "Adj. R2" "Mean (dep. var.)" "SD (dep. var.)")) ///
 coeflabel(viol_maj "Viols sur majeur(e)s" date "Date")

 esttab res4 using table4.tex , tex replace b(3) se(3) starlevels(* 0.1 ** 0.05 *** 0.01) nomtitle ///
 stat(N r2_a ymean ysd, fmt(0 3 2 2) label("Nr. obs." "Adj. R2" "Mean (dep. var.)" "SD (dep. var.)")) ///
 coeflabel(viol_maj "Viols sur majeur(e)s" date "Date")
 
 esttab res5 using table5.tex , tex replace b(3) se(3) starlevels(* 0.1 ** 0.05 *** 0.01) nomtitle ///
 stat(N r2_a ymean ysd, fmt(0 3 2 2) label("Nr. obs." "Adj. R2" "Mean (dep. var.)" "SD (dep. var.)")) ///
 coeflabel(viol_maj "Viols sur majeur(e)s" date "Date")
