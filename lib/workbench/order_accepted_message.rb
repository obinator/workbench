class OrderAcceptedMessage
  attr_accessor :customer_id
  attr_accessor :order_id
  attr_accessor :product_ids_in_order

  def receipt
    # GOAL Implement message receipt formatted output
  end
end
