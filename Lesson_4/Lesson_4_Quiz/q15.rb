#  {a: 1, b: 2, c: 3, d: 4, e: 5}.some_method do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end
# => {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5}

#  A. The Hash#each method returns the calling object, i.e. the hash that each was called on.