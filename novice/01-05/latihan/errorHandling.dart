import 'dart:async';

Future<void> openFile(String fileName) async {
  throw new Exception(fileName);
}

void main() async {
  try {
    var result = await openFile("theFile");
    print("Success");
  } catch (e) {
    print("we look like some error happen : ${e.toString()}");
  }
}