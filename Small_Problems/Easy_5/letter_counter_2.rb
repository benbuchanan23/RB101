#  Letter Counter (Part 2)
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.
ALPHA = ('a'..'z').to_a + ('A'..'Z').to_a

def word_sizes(string) 
  hash = {}
  array = string.split(' ') 
  
  
  array_2 = array.map do |element|
    element.size
  end 
  array_2.each do |element|
  hash[element] = array_2.count(element)
  end
  hash
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}