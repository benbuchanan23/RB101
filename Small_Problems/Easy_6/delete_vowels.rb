#  Delete vowels
#  Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# def remove_vowels(array) 
#   array.each do |string|
#     array_2 = string.chars
#     array_2.reject! do |element|
#     ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include?(element)
#     end
#     array_3 = array_2.join
#     p array_3.join(' ')
#   end
# end

def remove_vowels(array)
  array.map do |string|
    string.delete('aeiouAEIOU')
  end
end

# Example:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ'] 

