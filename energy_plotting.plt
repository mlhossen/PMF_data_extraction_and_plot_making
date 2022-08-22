set term xterm
set term postscript enhanced color solid 30
set encoding iso_8859_1
#set title "TMD-RMSD plot for outward-facing to inward-facing conformation of MATE family transporter " enhanced font "Helvetica,13"
set xr[48:68]
set yr[0:50]
#set mxtics 100
#unset key
set xlabel "CoM as Coordinate ({/Helvetica=25 \305})" font "Times-Roman, 25" offset 1,0.75,0
set ylabel "Potential of Mean Force (kcal/mol)" font "Times-Roman, 25" offset 2.5, 0, 0
set xtics font "Times-Roman, 25" offset 0,0.5,0
set ytics font "Times-Roman, 25" offset 0.5,0,0 
#set xtics (100 , 200 , 300, 400, 500) 
set key font "Times-Roman, 10" 

plot "48.5_66.7_60_0.0001_300_0_SARS_ACE2.pmf" u ($1):($2) w l lw 2 lc rgb "red" title "sars-ace2"
replot "49.6_66.6_60_0.0001_300_0_MERS_DPP4.pmf" u ($1-1.09):($2) w l lw 2 lc rgb "blue" title "mers-dpp4"
replot "54.2_70.9_60_0.0001_300_0_nCoV_DPP4.pmf" u ($1-5.69):($2) w l lw 2 lc rgb "black" title "ncov-dpp4"

#plot "ave30_in_np_Na+_stride10_100ns_totalenergy.dat" w l lw 2 lc rgb "orange" title "in-np-Na+"
#replot "ave30_in_np_stride10_100ns_onlytotalenergy.dat" w l lw 2 lc rgb "blue" title "in-np" 
#replot "ave30_in_p_stride10_100ns_onlytotalenergy.dat" w l lw 2 lc rgb "red" title "in-p"
#replot "ave30_out_np_stride10_100ns_onlytotalenergy.dat" w l lw 2 lc rgb "green" title "out-np" 
#replot "ave30_out_p_stride10_100ns_onlytotalenergy.dat" w l lw 2 lc rgb "black" title "out-p"
set out "pmf.ps"
replot
exit
