import 'dart:io';
import 'package:http/http.dart'; 
import 'package:path/path.dart';


Future<String> initiate() async {
  var client = Client();
  Response response = await client.get(
    'https://news.ycombinator.com'
  );

  var htmlStructured = response.body;
  
  return htmlStructured;
} 

Future<void> writeWebScraper(String htmlStructured) async {
  var pathToFile = join(dirname(Platform.script.toFilePath()), '..', 'web_scraper.txt');
  print(pathToFile);  
  var file = File(pathToFile);
  
  if (await file.exists()) {
    await file.writeAsString(htmlStructured);
  } else {
    print("Unsuccess");
  }
}