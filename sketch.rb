#!/usr/bin/env ruby

require_relative 'init'
require_relative 'support/examples'
require_relative 'support/examples/messages'

include Workbench

shipping_handler = Handlers::Shipping.new

dispatcher = MessageDispatcher.new shipping_handler

order_accepted, customer_billed = Examples.messages

dispatcher.process [order_accepted, customer_billed] do |receipt|
  puts receipt
end
