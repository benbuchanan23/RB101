#  Precedence (Mapping and Tapping)

# array = [1, 2, 3]

# p array.map {|num| num +1 }

# mapped_array = array.map {|num| num + 1}
# mapped_array.tap {|value| p value}

# (1..10).tap { |x| p x }   # 1..10
#  .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#  .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
#  .map {|x| x*x }        .tap { |x| p x }

array = (1..10).to_a
evens = array.select {|x| x.even?}

p evens