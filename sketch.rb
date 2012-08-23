#!/usr/bin/env ruby

require_relative 'init'
require_relative 'support/examples'

include Workbench

handler = Handlers::Shipping.new

dispatcher = MessageDispatcher.new handler

order_accepted, customer_billed = Examples.messages

dispatcher.dispatch [order_accepted, customer_billed] do |receipt|
  puts receipt
end
