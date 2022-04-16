def prompt(message)
  puts "==> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  float?(input) || integer?(input)
end

loop do 
prompt "Welcome to the Loan Calculator Tool, What is your name?"

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt "Please enter a valid name!"
  else
    break
  end
end

  loan_amount = ''
  loop do
    prompt "Hello #{name} What is your loan amount in US Dollars?"
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0 
      prompt "Whoa there cabron, Please enter a valid loan amount as an integer greater than 0."
    else
      break
    end
  end

    interest_rate = ''
    loop do
      prompt "Thank you #{name}, we now have your total loan amount of $#{loan_amount}, what is your annual percentage rate (APR) as a percentage?"
    interest_rate = gets.chomp

      if interest_rate.empty? || interest_rate.to_f < 0
        prompt "Please enter a valid APR greater than 0"
      else
        break
      end
    end
 
    loan_duration = ''
    loop do
      prompt "Finally, in how many months do you want to pay off your loan?"
      loan_duration = gets.chomp

      if valid_number?(loan_duration)
        break
      else
        prompt "Please enter a valid number of months as a positive integer"
      end
    end

    apr = interest_rate.to_f / 100
    mpr = apr / 12

  # message = <<~MSG
  #  Thank you! We now have your:
  #  Loan Amount: #{loan_amount}
  #  Monthly Interest Rate: #{mpr}
  #  Loan Duration: #{loan_duration}
  #  We will now calculate your monthly payment!
  #  Please wait, processing...
  #  MSG
  
  # prompt message

   monthly_payment = (loan_amount.to_f * (mpr / (1 - (1 + mpr)**(-loan_duration.to_f))))

   prompt "Your monthly payment is: $#{format('%.2f', monthly_payment)}"
   prompt "Do you want to calculate another loan? (y/n)"

   answer = gets.chomp
   break unless answer.downcase == 'y'
end

prompt "Thank you for using the Loan Calculator Tool"
