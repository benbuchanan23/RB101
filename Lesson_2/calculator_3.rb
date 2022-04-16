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
  integer?(input) || float?(input)
end

def operation_to_message(operator)
  case operator
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

prompt "Welcome to the Machine, What is your name: "

name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt "Please enter your name!"
  else
    break
  end
end

loop do
  number1 = ''
  loop do
    prompt "#{name}, what is your first number?"
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt "#{name} please enter a valid number."
    end
  end

  number2 = ''
  loop do
    prompt "#{name} what is the second number?"
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt "#{name} please enter a valid number."
    end
  end

  operator_prompt = <<-MSG
What operation would you like to perform?
    1) Addition
    2) Substraction
    3) Multiplication
    4) Division
    MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "Must choose 1-4!"
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."
  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end
           puts "...Computing, please wait!"

           result
          

  prompt "#{name} your result is #{result}"

  prompt "Do you want to perform another calculation #{name}? (y/n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "#{name}, Congratulations! You have successfully navigated through the Machine!"
