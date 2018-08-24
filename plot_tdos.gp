#======================================================
#          Output settings terminals 
#=====================================================
#
#    Type of file you want to print the plot
#    eps is the most recomended
#    Default: Shows it on your screen

set term pngcairo dashed enhanced font "Times-New-Roman, 11"
set output "tdos.png"

# Settings of plot and global properties
#============================================
# What appears in this section will be repeated in each plot

set  xlabel "Energy [eV]"
set  ylabel "Density of States [states/eV]"
set label "E_{fermi}" at 0.1,60
set label "Band Gap = 2.079 eV" at -7.8,-69
set key top right         # Location of the label box
set xr [-8:6]             # x ranges of both plots 
set yr [-80:80]           # y ranges of both plots 

# Plot 
#=======================================
# Set individual keys

plot 'fermi.dat' notitle with lines lt 0 lc rgb 'black', \
  "DOS_all.dat" using 1:2 title "TDOS" with lines lt 1 lw 2 lc rgb 'black', \
  "DOS_all.dat" using 1:3 notitle with lines lt 1 lw 2 lc rgb 'black', \
  "DOS_Oxygen.dat" using 1:4 title "O (p)" with lines lt 1 lc rgb 'blue', \
  "DOS_Oxygen.dat" using 1:5 notitle with lines lt 1 lc rgb 'blue', \
  "DOS_Uranium.dat" using 1:6 title "U (d)" with lines lt 0 lw 3 lc rgb 'green', \
  "DOS_Uranium.dat" using 1:7 notitle with lines lt 0 lw 3 lc rgb 'green', \
  "DOS_Uranium.dat" using 1:8 title "U (f)" with lines lt 1 lc rgb 'red', \
  "DOS_Uranium.dat" using 1:9 notitle with lines lt 1 lc rgb 'red';
