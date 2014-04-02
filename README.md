ZombieMonkey
============

What is ZombieMonkey?
---------------------

ZombieMonkey is an ActionScript 3.0 library that encapsulates the Tamarin binaries for compiling and running ECMAScript at runtime. In particular, it preserves variable and function declarations across script executions. This behavior emulates an interactive shell environment where variables and functions are persistent. As such, it can be embedded to provide ECMAScript scripting capabilities to any ActionScript 3.0 project. It was originally hosted at http://code.google.com/p/zombie-monkey/ and is part of a larger project called Zombie Monkey Shell (http://code.google.com/p/zombie-monkey-shell/), which is an interactive ECMAScript shell.

How do I use ZombieMonkey?
--------------------------

1. Compile "ZombieMonkey.swc" and include it in your project
2. Get the singleton instance of the ZMEngine via `ZMEngine.engine`
3. Invoke the `startup()` method on the engine
4. Listen for an `Event.COMPLETE` event
5. Invoke the `eval()` method on the engine with the ECMAScript script as a string as the first argument

Full package imports are not achieved by the `import` statement, e.g. `import flash.utils.*`, but by the `use namespace` statement, e.g. `use namespace "flash.utils"`. Similarly, qualified class names are not achieved via the dot operator, e.g. `flash.utils.Timer`, but by namespaced class names, e.g. `"flash.utils"::Timer`. Note that you must hard code the namespaces; they cannot be resolved from a variable or a return value of a function. Open namespaces also persist across script executions.
