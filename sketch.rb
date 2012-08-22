require_relative 'init'
require_relative 'utilities/build_messages'

include Workbench

shipping_handler = Handlers::Shipping.new

dispatcher = MessageDispatcher.new shipping_handler

order_accepted, customer_billed = messages

dispatcher.process [order_accepted, customer_billed] do |receipt|
  puts receipt
end
