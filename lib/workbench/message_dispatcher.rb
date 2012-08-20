require 'active_support/core_ext/string'

class MessageDispatcher
  def initialize(handler)
    @handler = handler
  end

  def process(messages)
    # GOAL Implement dispatching of messages to handler
    # change class name to string
    # strip "message"
    # underscore the string to sym
    # send to handler, with message as arg

    messages.each do |msg|
      process_message msg
    end
  end

  def process_message(message)
    puts "#{@handler.class.name} processing #{message.class.name}"

    message_name = message.class.name.chomp("Message").underscore
    handler_name = "handle_#{message_name}"

    @handler.send handler_name, message
  end
end
