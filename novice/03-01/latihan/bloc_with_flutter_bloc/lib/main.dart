import 'package:bloc_with_flutter_bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
        child: MyHomePage(),
        builder: (context) => ColorBloc(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.dispatch(ColorEvent.to_amber);
              },
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                bloc.dispatch(ColorEvent.to_light_blue);
              },
            ),
          ],
        ),
        appBar: AppBar(
          title: Text("BloC with flutter_bloc"),
        ),
        body: Center(
          child: BlocBuilder<ColorBloc, Color>(
            builder: (context, currentColor) => 
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: 100,
              width: 100,
              color: currentColor,
            ),
          ),
        ));
  }
}
