#  BODY MASS INDEX CALCULATOR by Ben Buchanan

def prompt(message)
  puts ":: #{message}"
end

loop do 
  loop do 
    prompt "Welcome to the Body Mass Index Calculator"
    prompt "This machine will calculate your BMI. Do you know your height in Meters? (y/n)"
      answer = gets.chomp
      if answer.downcase.start_with?('y')
        prompt "What is your height in meters?" 
        meters = gets.chomp
        prompt "Thank you, your height is #{meters}m!" 

        puts "What is your weight in Kilograms?"
        kilograms = gets.chomp
        prompt "Thank you, your weight is #{kilograms}kg!"

        prompt "Calculating BMI..."
  
        bmi = kilograms.to_f / (meters.to_f ** 2)
        prompt "Your BMI is #{bmi}!" 
      else
        prompt "What is your height in inches?"
        inches = gets.chomp
        prompt "Thank you, your height is #{inches}in!" 

        puts "What is your weight in pounds?"
        pounds = gets.chomp
        prompt "Thank you, your weight is #{pounds}lbs!"

        prompt "Calculating BMI..."
  
        bmi = (pounds.to_f * 703) / (inches.to_f ** 2)
        prompt "Your BMI is #{bmi}!" 

        if bmi <= 18.5
          puts "You are Underweight"
        elsif  (18.5..24.9).to_a.include?(bmi)
          puts "You have a normal weight, Congrats!" 
        elsif (25..29.9).to_a.include?(bmi)
          puts "You are Overweight, think about a diet."
        else 
          puts "You are Obese, it is time to give up the donuts!" 
        end
    end
  end
end
