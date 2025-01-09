#!/bin/bash

# Check if the correct number of parameters is passed
if [ $# -ne 3 ]; then
  echo "Usage: $0 <Monthly Investment Amount> <Annual Interest Rate> <Investment Term (in years)>"
  exit 1
fi

# Assign input parameters to variables
monthly_investment=$1
annual_interest_rate=$2
investment_term_years=$3

# Convert annual interest rate to a monthly interest rate
monthly_interest_rate=$(echo "scale=5; $annual_interest_rate / 100 / 12" | bc -l)

# Convert investment term from years to months
total_months=$(($investment_term_years * 12))

# Initialize variables
initial_investment=0
total_investment_value=0

# Array to store investment values per month
declare -a investment_growth

# Calculate the growth of the investment for each month using compound interest
for (( month=1; month<=total_months; month++ )); do
  # Calculate the future value for the current month
  total_investment_value=$(echo "$total_investment_value * (1 + $monthly_interest_rate) + $monthly_investment" | bc -l)
  # Store the growth value in an array
  investment_growth[month]=$(printf "%.2f" $total_investment_value)
  
  # Calculate initial investment (without interest)
  initial_investment=$(echo "$initial_investment + $monthly_investment" | bc -l)
done

# Calculate the total interest earned
total_interest=$(echo "$total_investment_value - $initial_investment" | bc -l)

# Display the results
echo "Initial total investment: \$$(printf "%.2f" $initial_investment)"
echo "Total investment value: \$$(printf "%.2f" $total_investment_value)"
echo "Total interest earned: \$$(printf "%.2f" $total_interest)"

# Uncomment below line if you want to print the monthly growth array values
# echo "Monthly investment growth: ${investment_growth[@]}"

