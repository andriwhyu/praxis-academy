import 'dart:convert';
import 'dart:io';

void main() {
  bool isJourney;

  stdout.write("Do you want start this journey(Y/N): ");
  String userInput = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  userInput = userInput.toLowerCase();
  
  while(userInput != 'y' && userInput !='n') {
    userInput = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  }

  if(userInput == 'y') isJourney = true;
  else isJourney = false;

  while(isJourney) {
    
  }
  // var journeyPoint = const  {
  //   "1.9",
  //   "7.8",
  //   "3.3",
  //   "1.5",
  //   "2.2"
  // };
  // var totalDistance = [];
  // stdout.write("Input: ");
  // var destinationCity = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  // print(destinationCity);
}