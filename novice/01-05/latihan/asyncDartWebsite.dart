Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return "Your order is ${order}";
}

Future<String> fetchUserOrder() async {
  return Future<String>.delayed(const Duration(seconds: 4), () => "Large Latte");
}

void main() async {
  print(await createOrderMessage());
}