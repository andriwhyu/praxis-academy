
void printOrderMessage() async {
  try {
    var order = await fetchUserOrder();
    print("await for user order");
    print(order);
  } catch (e) {
    print("error happen: $e");
  }
}

Future<String> fetchUserOrder() {
  var str =Future.delayed(Duration(seconds: 4), () => throw 'cannot locate user order');
  return str;
}

Future<void> main() async {
  await printOrderMessage();
}