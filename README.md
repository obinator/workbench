# Workbench Ruby Exercises

The "workbench" library is a mock-up of a message dispatching framework. A dispatcher routes messages to handlers. The handlers receive messages and do any processing and business logic.

## Ruby Version and Gemset

RVM isn't absolutely necessary for the exercise, but it was developed on Ruby 1.9.2-p320. If you don't have this version installed, you can build it from source, add its binaries to your system's search path, and remove the version of Ruby that ships with Mac OS from the search path.

The project includes a RVM `.rvmrc` file specifying Ruby version `1.9.2-p320` and a gemset named `workbench`.

Install Ruby `1.9.2-p320` with `rvm install ruby-1.8.7-p320`. A higher patch level of Ruby 1.9.2 should work.

After installing Ruby 1.9.2-p320, switch to that Ruby with `rvm use 1.9.2-p320`.

Create the gemset with `rvm gemset create workbench`. And switch to the gemset with `rvm 1.9.2-p320@workbench`.

## Gems and Bundler

Package management for Ruby projects is done with a combination of RubyGems and Bundler.

Install Bundler into the `workbench` gemset with `gem install bundler`. Once bundler has installed, install the gems for the workbench project with `bundle install`. NOTE: There are no gems used for this project yet. You will need to `install` or `update` gems as further progress is made into subsequent increments.

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
