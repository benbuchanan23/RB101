#  Practice Problem 12    ######################################################
#  Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# hash = {}
# arr.each do |sub_arr|
#   key = sub_arr.first 
#   value = sub_arr[(1..-1)]
#   hash[key] = value
# end
# p hash

hash = {}
arr.each do |sub_arr|
  hash[sub_arr[0]] = sub_arr[1..-1]
end
p hash
