def prompt(msg)
  puts "=> #{msg}"
end

prompt "Welcome to the Car Loan Calculator!"
prompt "What is your loan amount?"
loan_amount = gets.chomp.to_f

prompt "What is your Annual Percentage Rate (APR)?"
apr = gets.chomp.to_f
mpr = (apr / 12) / 100

prompt "What is your loan duration in years?"
loan_duration_years = gets.chomp.to_f
loan_duration_months = loan_duration_years * 12

monthly_payment = loan_amount * (mpr / (1 - (1 + mpr)**(-(loan_duration_months))))
p "Your monthly payment is: $#{monthly_payment.round(2)}"
