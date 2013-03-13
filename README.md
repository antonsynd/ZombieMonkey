Zombie Monkey
=============

What is Zombie Monkey?
----------------------

Zombie Monkey is an ActionScript 3.0 library that encapsulates the Tamarin binaries for compiling and running ECMAScript at runtime. In particular, it preserves variable and function declarations across script executions. This behavior emulates an interactive shell environment where variables and functions are persistent. As such, it can be embedded to provide ECMAScript scripting capabilities to any ActionScript 3.0 project.

How do I use Zombie Monkey?
---------------------------

1. Compile "Zombie Monkey.swc" and include it in your project
2. Get the singleton instance of the ZMEngine via `ZMEngine.engine`
3. Invoke the `startup()` method on the engine
4. Listen for an `Event.COMPLETE` event
5. Invoke the `eval()` method on the engine with the ECMAScript script as a string as the first argument
