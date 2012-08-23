module Workbench
  module Handlers
    class Shipping
      def initialize
        @data = Data::Shipping.new
      end

      def name(message)
        "handle_#{message.name}"
      end

      def handle(message)
         send name(message), message
      end

      def handle_order_accepted(message)
        @data.product_ids_in_order = message.product_ids_in_order
        @data.customer_id = message.customer_id
        @data.order_id = message.order_id
      end

      def handle_customer_billed(message)
        @data.customer_billed = true
        @data.customer_id = message.customer_id
        @data.order_id = message.order_id
      end
    end
  end
end
