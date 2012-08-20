def messages
  customer = OpenStruct.new
  customer.id = 111

  order = OpenStruct.new
  order.id = 222
  order.product_ids = [1, 2, 3]

  order_accepted = OrderAcceptedMessage.new
  order_accepted.customer_id = customer.id
  order_accepted.order_id = order.id
  order_accepted.product_ids_in_order = order.product_ids

  customer_billed = CustomerBilledMessage.new
  customer_billed.customer_id = customer.id
  customer_billed.order_id = order.id

  [order_accepted, customer_billed]
end
