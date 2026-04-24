import 'dart:async';

void main() {
  Stream<int> stream = Stream.periodic(
    Duration(seconds: 1),
    (count) => count + 1,
  ).take(5).asBroadcastStream();

  // Listener 1: original values
  stream.listen((data) {
    print("Original: $data");
  });

  // Listener 2: square values
  stream.map((data) => data * data).listen((data) {
    print("Square: $data");
  });
}