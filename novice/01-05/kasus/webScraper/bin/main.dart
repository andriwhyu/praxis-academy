import '../lib/webScraper.dart' as webScraper;



void main() async {
  var structured = await webScraper.initiate();
  await webScraper.writeWebScraper(structured);
}
