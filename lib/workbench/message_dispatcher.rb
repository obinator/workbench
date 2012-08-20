require 'active_support/core_ext/string'

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
    puts "#{@handler.class.name} processing #{message.class.name}"

    message_name = message.class.name.chomp("Message").underscore
    handler_name = "handle_#{message_name}"

    @handler.send handler_name, message
    message.receipt
  end
end
