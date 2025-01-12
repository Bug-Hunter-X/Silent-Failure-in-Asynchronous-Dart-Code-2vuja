# Silent Failure in Asynchronous Dart Code

This example demonstrates a subtle error in asynchronous Dart code where an asynchronous operation completes with an error, but the error is not handled properly, leading to a seemingly silent failure.  This can be particularly hard to debug.

The `bug.dart` file contains code that simulates an asynchronous operation which after 2 seconds fails, completing the `Completer` with an error.  However, if the error isn't caught, the program silently exits without indicating the issue. 

The solution is in `bugSolution.dart`.