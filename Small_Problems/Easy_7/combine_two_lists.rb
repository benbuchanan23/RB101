#  Combine Two Lists
#  Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

def interleave(array1, array2)
  final = []
  until array1.empty? && array2.empty? 
    final << array1.shift
    final << array2.shift
  end
  final
end

##Using Zip 
def interleave(a1, b1)
  a1.zip(b1).flatten!
end

# Example:
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']