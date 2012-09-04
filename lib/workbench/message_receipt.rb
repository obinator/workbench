module Workbench
  class MessageReceipt
    attr_accessor :message_class
    attr_accessor :message_description
    attr_accessor :handler_class

    def self.build(message, handler)
      receipt = new
      receipt.message_class = message.class
      receipt.message_description = message.description
      receipt.handler_class = handler.class
      receipt
    end

    def to_s
      <<-text
      #{message_class.name.demodulize} message dispatched to the #{handler_class.name.demodulize} handler
      #{message_description}
text
    end
  end
end