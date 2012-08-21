module Workbench
  class CustomerBilledMessage
    attr_accessor :customer_id
    attr_accessor :customer_billed
    attr_accessor :order_id

    def receipt
      "Customer #{customer_id} billed for order #{order_id}"
    end
  end
end
