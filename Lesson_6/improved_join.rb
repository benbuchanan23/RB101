#  Improved "join"

#  If we run the current game, we'll see the following prompt:

# => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, 9
# This is ok, but we'd like for this message to read a little better. We want to separate the last item with a "or", so that it reads:

# => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9
# Currently, we're using the Array#join method, which can only insert a delimiter between the array elements, and isn't smart enough to display a joining word for the last element.

# Write a method called joinor that will produce the following result:
def joinor(array, separator = ', ', word = 'or')
  case array.size 
  when 0 then '' 
  when 1 then array.first
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(separator)
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
