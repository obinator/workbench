# Workbench Ruby Exercises

The "workbench" library is a mock-up of a message dispatching framework. A dispatcher routes messages to handlers. The handlers receive messages and do any processing and business logic.

## Classes

- `MessageDispatcher` sends messages to handlers
- `ShippingHandler` handles messages involved in a "shipping" process
- `ShippingData` is the persistent state for the shipping process
- The messages involved in the scenario are `OrderAcceptedMessage` and `CustomerBilledMessage`

## Exercising the library

The `sketch.rb` file is the main "driver" program for the example exercise. It shows the intension of the use of the library.

Run the file in an editor with a Ruby runner, or at the command line in the project directory with `ruby sketch.rb`.

## One solution per pair

One solution should be submitted per pair. Reviewing multiple submissions is too time-costly.

Both members of the pair should be able to explain the code with equal aplomb. The task isn't complete until members of the pair have equal facility with the problem and the solution.

## Submitting Solutions

Fork the repository, and commit solutions to your fork. Submit the solution code in a single, squashed commit. Reviewing will be easier with a single, unified diff from the original.

## Tasks

See the `instructions.md` file for specific implementation instructions for exercises.
