module Workbench
  module Handler
    extend self
    
    def name(message)
      "handle_#{message.name}"
    end

    def handle(message)
      send name(message), message
    end

    def handles?(message)
      respond_to? name(message)
    end
  end
end
