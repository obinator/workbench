require 'active_support/core_ext/string'

module Workbench
  class MessageDispatcher
    def initialize(handler)
      @handler = handler
    end

    def dispatch(messages)
      messages.each do |msg|
        receipt = dispatch_message msg
        yield receipt if block_given?
      end
    end

    def dispatch_message(message)
      @handler.handle message
      puts "#{message.class.name.demodulize} dispatched to #{@handler.class.name.demodulize}"

      message.receipt
    end
  end
end

