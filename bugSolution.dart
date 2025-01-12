```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  // Simulate an asynchronous operation that might fail
  Timer(const Duration(seconds: 2), () {
    // Simulate a failure condition
    completer.completeError(Exception('Something went wrong!'));
  });

  try {
    final result = await completer.future;
    print('Result: $result');
  } catch (e) {
    // Explicitly catch and handle the error
    print('Error caught: $e'); //Proper error handling 
  }
}
```