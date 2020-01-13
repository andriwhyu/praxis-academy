Future<void> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 3), () => throw Exception('Logout failed: user ID is invalid'));
}

void main() {
  fetchUserOrder();
  print("Fetching user order...");  
} 