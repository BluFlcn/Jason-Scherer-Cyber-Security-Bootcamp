#!/Bin/bash

# Roulette Schedule including time and day during losses

echo "march 10, Roulette schedule with time and day \n"

awk '{print $1, $2, $5, $6}' 0310_D* | grep 05:00:00 | grep AM
awk '{print $1, $2, $5, $6}' 0310_D* | grep 08:00:00 | grep AM
awk '{print $1, $2, $5, $6}' 0310_D* | grep 02:00:00 | grep PM
awk '{print $1, $2, $5, $6}' 0310_D* | grep 08:00:00 | grep PM
awk '{print $1, $2, $5, $6}' 0310_D* | grep 11:00:00 | grep PM
awk '{print $1, $2, $5, $6}' 0312_D* | grep 05:00:00 | grep AM
awk '{print $1, $2, $5, $6}' 0312_D* | grep 08:00:00 | grep AM
awk '{print $1, $2, $5, $6}' 0312_D* | grep 02:00:00 | grep PM
awk '{print $1, $2, $5, $6}' 0312_D* | grep 08:00:00 | grep PM
awk '{print $1, $2, $5, $6}' 0312_D* | grep 11:00:00 | grep PM
awk '{print $1, $2, $5, $6}' 0315_D* | grep 05:00:00 | grep AM
awk '{print $1, $2, $5, $6}' 0315_D* | grep 08:00:00 | grep AM
awk '{print $1, $2, $5, $6}' 0315_D* | grep 02:00:00 | grep PM

echo "Script run successfully and saved to 0310_Roulette_Schedule \n"

