#  Example 10
#  Let's say we have the following data structure of nested arrays and we want to increment every number by 1 without changing the data structure.


[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
#This example is more complicated than the rest, but at this point you should be able to break it down effectively. Use the tools you've learned about in this lesson and take as much time as needed. Work on breaking down each component and understanding the return value of each expression. What will be the final return value? Check the solution only after you've tried this on your own.