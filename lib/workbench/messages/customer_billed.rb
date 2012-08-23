module Workbench
  module Messages
    class CustomerBilled
      attr_accessor :customer_id
      attr_accessor :customer_billed
      attr_accessor :order_id

      def name
        self.class.name.demodulize.underscore
      end

      def receipt
        "Customer #{customer_id} billed for order #{order_id}"
      end
    end
  end
end
