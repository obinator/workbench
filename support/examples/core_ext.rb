require 'ostruct'

def example(definition_name, options=nil)
  FactoryGirl.build definition_name, options
end
