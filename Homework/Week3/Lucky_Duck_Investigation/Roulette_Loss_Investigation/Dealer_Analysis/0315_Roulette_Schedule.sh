#!/Bin/bash

# Roulette Schedule including time and day

echo "march 15, Roulette schedule with time and day \n"

awk '{print $1, $2, $5, $6}' ./0315_Dealer_schedule > 0315_Roulette_Schedule

echo "Script run successfully and saved to 0310_Roulette_Schedule \n"

