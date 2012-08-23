#!/usr/bin/env ruby

require_relative 'init'
require_relative 'support/build_messages'
require_relative 'support/examples'

include Workbench

shipping_handler = Handlers::Shipping.new

dispatcher = MessageDispatcher.new shipping_handler

order_accepted, customer_billed = messages

dispatcher.process [order_accepted, customer_billed] do |receipt|
  puts receipt
end
