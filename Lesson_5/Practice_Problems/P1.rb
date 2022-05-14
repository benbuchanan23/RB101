#  Practice Problem 1                  ##############################
#  How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']
string_array = []

arr.each do |string|
  number = string.to_i
  string_array << number
end

string_array.sort do |a, b|
  b <=> a
end

p string_array
# p string_array.sort.reverse


#  arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end
# => ["11", "10", "9", "8", "7"]