require_relative 'core_ext'

module Examples
  extend self
  
  def messages
    order_accepted = example :order_accepted_message
    customer_billed = example :customer_billed_message

    [order_accepted, customer_billed]
  end
end
