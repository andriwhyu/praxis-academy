import 'dart:convert';
import 'dart:io';

main() {
  new HttpClient().getUrl(Uri.parse('https://news.ycombinator.com'))
    .then((HttpClientRequest request) => request.close())
    .then((HttpClientResponse response) => response.pipe(new File('mytxt.txt').openWrite()));
}