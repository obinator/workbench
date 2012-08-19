require_relative '../../init'

shipping_handler = ShippingHandler.new

dispatcher = MessageDispatcher.new shipping_handler

order_accepted = OrderAcceptedMessage.new
customer_billed = CustomerBilledMessage.new

dispatcher.process [order_accepted, customer_billed] do |receipt|
  puts receipt
end
