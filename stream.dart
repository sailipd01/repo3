import 'dart:async';

void main() async {
  Stream<int> stream = Stream.periodic(
    Duration(seconds: 2),
    (count) => count + 1,
  ).take(5);

  stream.listen(
    (data) {
      print("Received: $data");
    },
    onDone: () {
      print("Stream completed");
    },
  );
}