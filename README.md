# Investment-Tracker

This script calculates the growth of an investment over time, considering monthly contributions and compound interest. Here's what it does:

1) Input validation: It checks if exactly three parameters (monthly investment amount, annual interest rate, and investment term in years) are provided.
2) Monthly interest rate: It converts the annual interest rate to a monthly rate.
3) Investment term: It calculates the total number of months based on the investment term in years.
4) Investment growth calculation: It loops through each month, calculating the future value of the investment using compound interest and storing the values in an array.
5) Total interest: It calculates the total interest earned by subtracting the initial investment (without interest) from the total investment value.
6) Display results: It outputs the initial investment, the total value of the investment, and the total interest earned.
7) The script can optionally print the monthly growth of the investment if the commented line is enabled.

How to Use:


1) Save the Script: Save the script as investment_growth.sh on your local system.

2) Make the Script Executable: Run the following command in your terminal to make the script executable:
chmod +x investment_growth.sh


3) Run the Script: Execute the script by passing the required arguments: monthly investment amount, annual interest rate, and investment term in years. The syntax for running the script is:


./investment_growth.sh <Monthly Investment Amount> <Annual Interest Rate> <Investment Term (in years)>

FOR EXAMPLE: 

./investment_growth.sh 200 5 10

This example assumes you're investing $200 per month with a 5% annual interest rate for 10 years.

Output: The script will output:

-Initial total investment: The total amount invested without interest.

-Total investment value: The accumulated value of the investment, including interest.

-Total interest earned: The difference between the total investment value and the initial investment (i.e., the interest earned over the period).

