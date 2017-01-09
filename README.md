# Mock-Generation-Swift
A Sourcery template to automatically generate mocks from Swift protocols.

## For each protocol implementing `AutoMockable` it will...
Create a class called `ProtocolNameMock` in which it will...

**For each function:**
 - Implement the function
 - Add a `functionCalled` boolean to check if the function was called
 - Add a `functionRecievedArguments` tuple to check the arguments that were passed to the function
 - Add a `functionReturnValue` variable and return it when the function is called.
 
**For each variable:**
 - Add a gettable and settable variable with the same name and type

## Issues and limitations:
* Function parameters that are `@escaping` closures will produce a compiler error when declaring the `recievedArguments` tuple, because functions tuples are implicitly escaping, so there's no need for `@escaping`. Workaround: Remove the `@escaping` from the declaration.
* Overloaded methods will produce compiler erros since the variables above the functions have the same name. Workaround: delete the variables on top of one of the functions, or rename them.

## Usage:
You will need [Sourcery](https://github.com/krzysztofzablocki/Sourcery/) for this to work. See the Sourcery readme for more info.

**Pull requests welcome!**
