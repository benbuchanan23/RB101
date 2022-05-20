#  How Many?
#  Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
cars = []
trucks = []
motorcycles = []
suvs = []
vehicles.select do |auto|
  if auto == 'car'
    cars << auto
  elsif  auto == 'truck' 
    trucks << auto
  elsif auto == 'motorcycle' 
    motorcycles << auto
  else
    suvs << auto
  end
end

p "car => #{cars.size}"
p "truck => #{trucks.size}"
p "motorcycle => #{motorcycles.size}"
p "SUV => #{suvs.size}"

# count_occurrences(vehicles)
#  The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2