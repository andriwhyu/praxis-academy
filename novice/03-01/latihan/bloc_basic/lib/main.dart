import 'package:bloc_basic/color_bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_light_blue);
              },
              backgroundColor: Colors.lightBlue,
            )
          ],
        ),
        appBar: AppBar(
          title: Text("BloC without Package"),
        ),
        body: Center(
          child: StreamBuilder(
            initialData: Colors.amber,
            stream: bloc.stateStream,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 100,
                width: 100,
                color: snapshot.data,
              );
            },
          )
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
}
