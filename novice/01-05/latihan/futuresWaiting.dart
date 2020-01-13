import 'dart:async';
import 'dart:math';

Future<int> getRandomNumber() async {
  var random = new Random();

  return random.nextInt(100);
}

void getSmallestNumberInRandom(List<int> lst) {
  print("all number are in:");
  lst.forEach((l) => print(l));
  lst.sort();
  int smallest = lst.first;
  print("The smallest random # we generated was: ${smallest}");
}

void main() async {
  Future.wait([getRandomNumber(), getRandomNumber(), getRandomNumber()])
    .then((List<int> lst) => getSmallestNumberInRandom(lst));
}