void printOrderMessage() async {
  var order = await fetchUserOrder();
  print('Awaiting user order...');
  print("User order is $order");
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
}

Future<void> main() async {
  countSeconds(4);
  await printOrderMessage();
}

void countSeconds(int s) {
  for(int i=1; i<=s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}