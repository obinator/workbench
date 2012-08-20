class CustomerBilledMessage
  attr_accessor :customer_id
  attr_accessor :customer_billed
  attr_accessor :order_id

  def receipt
    to_s
  end
end
