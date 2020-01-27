import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/bloc/counter_bloc.dart';
import 'package:provider_practice/widgets/decrement.dart';
import 'package:provider_practice/widgets/increment.dart';
import 'package:provider_practice/widgets/reset.dart';


class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[50],
        title: Text(
          "Counter",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 24.0
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 64.0),
              ),
              IncrementButton(),
              DecrementButton(),
              ResetButton()
            ],
          ),
        ),
      ),
    );
  }
}