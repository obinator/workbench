# Instructions

Ruby projects namespace their modules. "Module" in this case refers to a unit of design, rather than Ruby's `module` keyword.

It's not necessary to namespace Ruby code, but naming collisions are more likely in absence of namespaces. Naming collisions would happen when you have a some module, and some third-party library you want to use also has a module of the same name. There would be no way to disambiguate one module from the other.

In Ruby, two modules of the same name won't over-write each other, which would make potential problems more apparent due to one of the modules appearing to have gone missing. Instead, the modules would be merged into a single module - which increases the likelihood of unintended side-effects.

Namespaces in Ruby projects *typically* correspond to the directories in the project structure, and directories *typically* get namespaces.

Namespaces in Ruby are created by nesting modules. And in this case "module" can refer to Ruby's `module`. It can also refer to a Ruby `class`. Although Ruby has some limited functional programing qualities, namespaces in Ruby aren't created through functions, as they would in a language like JavaScript, for example.

## Goals

### Nest Classes Within a Project Namespace

All classes in the `workbench` directory should be part of the `workbench` namespace.

For each class in the `workbench` project, nest the class in a module named "workbench".

For example:

    module Workbench
      class MessageDispatcher
      end
    end

This may create problems where classes are referenced in code that are no longer found due to the addition of namespaces. This is because the classes have moved from one namespace to another - from the root namespace to the `workbench` namespace.

Resolve any namespace conflicts that result from nesting classes in the `workbench` namespace.

Ignore the code in the `utilities` directory. The code in this directory is really just a hack. It shouldn't be formalized in a namespace until there's a better understanding of a more permanent way of structuring it.

### Replace Class Name Suffixes with Namespaces

Create archetype suffixes in class names, eg: "message", and replace them with namespaces of the same name.

Use the plural from of the suffix as the namespace.

Replace the following suffixes:

- Message
- Data
- Handler

## Expected Output

The output should remain the same when running sketch.rb:

ShippingHander processing OrderAcceptedMessage
Order 222 accepted for customer 111 for products 1, 2, and 3

ShippingHander processing CustomerBilledMessage
Customer 111 billed for order 222
