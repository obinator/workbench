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
      end
    end

    def dispatch_message(message)
      find_handlers message do |handler|
        receipt = handler.handle! message
        yield receipt
      end
    end

    def find_handlers(message)
      @handlers.each do |handler|
        yield handler if handler.handles? message
      end
    end

  end
end