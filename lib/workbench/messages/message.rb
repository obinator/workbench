module Workbench
  module Messages
    module Message
      def name
        self.class.name.demodulize.underscore
      end
    end
  end
end
