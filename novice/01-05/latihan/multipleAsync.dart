import 'dart:async';

Future<String> firstAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "First Async";
}

Future<String> secondAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "Second Async";
}

Future<String> thirdAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "Third Async";
}

void main() async {
  var f = await firstAsync();
  print(f);
  var s = await secondAsync();
  print(s);
  var t = await thirdAsync();
  print(t);
  print("Done");
}