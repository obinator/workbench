# Instructions

## Goals

- Implement the `MessageDispatcher#process` method, dispatching messages to the appropriate method of `ShippingHandler`
- Implement the `receipt` method of each messages to provide the formatted output used as the message receipt
- Print the expected output to standard out (see below)

## Expected Output

ShippingHander processing OrderAcceptedMessage  
Order 222 accepted for customer 111 for products 1, 2, and 3

ShippingHander processing CustomerBilledMessage  
Customer 111 billed for order 222
