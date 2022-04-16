
def prompt(message)
  puts "==> #{message}" 
end

def valid_number?(num)
  num.to_i() != 0
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

number_1 = ''
  loop do 
  prompt "#{name}, what is your first number?" 
  number_1 = gets.chomp

    if valid_number?(number_1) 
      break
    else
      prompt "#{name} please enter a valid number."
    end
  end

  number_2 = ''
  loop do
  prompt "#{name} what is the second number?" 
  number_2 = gets.chomp
    if valid_number?(number_1)
      break
    else
      prompt "#{name} please enter a valid number."
    end
  end

  operator_prompt = <<-END
What operation would you like to perform?
    1) Addition
    2) Substraction
    3) Multiplication
    4) Division
    END

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
    number_1.to_i + number_2.to_i 
  when '2'
    number_1.to_i - number_2.to_i
  when '3'
    number_1.to_i * number_2.to_i 
  when '4'
    number_1.to_f / number_2.to_f
  end

  prompt "#{name} your result is #{result}" 

  prompt "Do you want to perform another calculation #{name}? (y/n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt "#{name}, Congratulations! You have successfully exited the Machine!" 