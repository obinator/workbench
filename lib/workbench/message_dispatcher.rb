module Workbench
  class MessageDispatcher
    def initialize(handlers)
      @handlers = handlers
    end

    def dispatch(messages)
      messages.each do |msg|
        receipt = dispatch_message msg
        yield receipt if block_given?
      end
    end

    def dispatch_message(message)
      handler = find_handler(message)
      handler.handle message
      puts "#{message.class.name.demodulize} message dispatched to #{handler.class.name.demodulize} handler"

      message.receipt
    end

    def find_handler(message)
      @handlers.find { |h| h.handles? message }
    end
  end
end

