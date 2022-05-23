#  Short Long Short
#  Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

def short_long_short(string_1, string_2)
  if string_1.size < string_2.size
    short = string_1
    long = string_2
  else
    short = string_2
    long = string_1
  end
    "#{short}#{long}#{short}" 
end

# Examples:
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"