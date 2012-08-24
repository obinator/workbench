module Workbench
  module Message
    def name
      self.class.name.demodulize.underscore
    end
  end
end
