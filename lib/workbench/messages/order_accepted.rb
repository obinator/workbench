require 'active_support/core_ext/array'

module Workbench
  module Messages
    class OrderAccepted
      include Message

      attr_accessor :customer_id
      attr_accessor :order_id
      attr_accessor :product_ids_in_order

      def receipt
        "Order #{order_id} accepted for customer #{customer_id} for products #{product_ids_in_order.to_sentence}"
      end
    end
  end
end
