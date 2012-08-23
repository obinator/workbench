require 'ostruct'

def messages
  order_accepted = FactoryGirl.build(:order_accepted_message)

  customer_billed = FactoryGirl.build(:customer_billed_message)

  [order_accepted, customer_billed]
end
