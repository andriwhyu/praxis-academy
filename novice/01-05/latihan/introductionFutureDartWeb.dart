Future<void> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 3), () => print("Large Latte"));
}

void main() {
  fetchUserOrder();
  print("Fetching user order...");  
}