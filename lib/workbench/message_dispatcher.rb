module Workbench
  class MessageDispatcher
    def initialize(handlers)
      @handlers = handlers
    end

    def dispatch(messages)
      messages.each do |msg|
        dispatch_message msg do |receipt|
          yield receipt
        end
      end # messages.each
    end # dispatch

    def dispatch_message(message)
      find_handlers message do |handler|
        handler.handle message
        puts "#{message.class.name.demodulize} message dispatched to #{handler.class.name.demodulize} handler"

        yield message.receipt
      end # find_handlers
    end # dispatch_message

    def find_handlers(message)
      @handlers.each do |handler|
        yield handler if handler.handles? message
      end
    end # find_handlers

  end # MessageDispatcher
end # Workbench

