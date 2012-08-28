# Instructions

An endpoint can be expected to have multiple handlers that messages can be routed to. For the moment, the solution has a single handler, and this handler handles all messages.

The solution is now made up of two libraries, the `Workbench`, which is the messaging framework, and `Business`, which is the business logic library.

Another handler has been added to the solution. The `SalesHandler` handles the `OrderReceived` message. The `SalesHandler` uses a new data class named `SalesData`.

Dispatch the correct messages to the correct handler.

## Goals

- Implement the SalesHandler
- Enable the MessageDispatcher to work with multiple handlers
- Update the examples helper and the factories to account for the new message

## Expected Output

The output from the sketch should be:

SalesHandler processing OrderReceivedMessage
Order 222 received for customer 111 for products 1, 2, and 3

ShippingHander processing OrderAcceptedMessage
Order 222 accepted for customer 111 for products 1, 2, and 3

ShippingHander processing CustomerBilledMessage
Customer 111 billed for order 222

