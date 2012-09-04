# Instructions

Handle a single message with multiple handlers

## Goals

- Handle the OrderReceived with the Something handler
- Handle the Something message with the Something handler
- Implement the receipt for the Something message

## Expected Output

The output from the sketch should be:

    OrderReceived message dispatched to Sales handler
    Order 222 received for customer 111 for products 1, 2, and 3
    OrderReceived message dispatched to Something handler
    Order 222 received for customer 111 for products 1, 2, and 3
    OrderAccepted message dispatched to Shipping handler
    Order 222 accepted for customer 111 for products 1, 2, and 3
    CustomerBilled message dispatched to Shipping handler
    Customer 111 billed for order 222
    Something message dispatched to Something handler
    Something happened
