#  Question 10 

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]

# all_orders =[
#   {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
#   {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
#   # rest of data
# ]

# fulfilled_orders =[
#   {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
#   {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
#   # rest of data
# ]

fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value] if order[:order_fulfilled]
  end

  p fulfilled_orders[index][:order_value] = order_value
end

# ANSWER: 
# C. If the conditional is not executed then the block will return nil for that iteration; based on the sample data this means that rather than the total values of the fulfilled orders, the order_value will be nil. If there was an fulfilled order after an unfulfilled order then an exception would be raised.

# You could fix this by adding an else clause to return total from the block for unfulfilled orders.