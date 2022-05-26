#  Lettercase Counter
#  Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

def letter_case_count(string)
  case_count = {lowercase: 0, uppercase: 0, neither: 0}
  
  string.chars.each do |letter|
    if ('A'..'Z').to_a.include?(letter)
      case_count[:uppercase] += 1
    elsif  ('a'..'z').to_a.include?(letter)
      case_count[:lowercase] += 1
    else
      case_count[:neither] += 1
    end
  end
  p case_count 
end

# Examples
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }