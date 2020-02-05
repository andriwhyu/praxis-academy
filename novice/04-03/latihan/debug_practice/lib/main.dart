import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "URL Launcher",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: "URL Launcher",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if(await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw "Could not launch $url";
    }
  }

  Future<void> _launchInWebViewOrVC(String url) async {
    if(await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw "Could not launch $url";
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if(snapshot.hasError) {
      return Text("Error: ${snapshot.error}");
    } else {
      return Text("");
    }
  }

  @override
  Widget build(BuildContext context) {
    String toLaunch = 'https://flutter.dev';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(toLaunch),
            ),
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInBrowser(toLaunch);
              }),
              child: Text("Launch in browser"),
            ),
            Padding(padding: EdgeInsets.all(16.0),),
            RaisedButton(
              onPressed: () => setState(() {
                _launched = _launchInWebViewOrVC(toLaunch);
              }),
              child: Text("Launch in App"),
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            FutureBuilder<void>(future: _launched, builder: _launchStatus)
          ],
        ),
      ),
    );
  }
}
