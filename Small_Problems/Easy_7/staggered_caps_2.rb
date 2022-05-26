#  Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(string)
  array = string.chars
  array.each_with_index do |element, index|
    if ('a'..'z').include?(element) #&& index.even? 
      p element
      # element.upcase!
    elsif ('a'..'z').include?(element) #&& index.odd?
      p element
      # element.downcase!
    end
  end
  p array.join
end

# Example:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'