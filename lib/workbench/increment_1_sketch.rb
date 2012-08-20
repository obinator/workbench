require_relative '../../init'
require 'workbench/utilities/build_messages'

shipping_handler = ShippingHandler.new

dispatcher = MessageDispatcher.new shipping_handler

order_accepted, customer_billed = messages

dispatcher.process [order_accepted, customer_billed] do |receipt|
  puts receipt
end
