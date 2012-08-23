require 'active_support/core_ext/string'

module Workbench
  class MessageDispatcher
    def initialize(handler)
      @handler = handler
    end

    def process(messages)
      messages.each do |msg|
        receipt = process_message msg
        yield receipt if block_given?
      end
    end

    def process_message(message)
      puts "#{@handler.class.name.demodulize} processing #{message.class.name.demodulize}"

      message_name = message.class.name.demodulize.underscore
      handler_name = "handle_#{message_name}"

      @handler.send handler_name, message
      message.receipt
    end
  end
end
