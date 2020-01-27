import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/bloc/counter_bloc.dart';

class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    
    return FlatButton.icon(
      icon: Icon(Icons.restore),
      label: Text("Reset"),
      onPressed: () {
        counterBloc.reset();
      },
    );
  }
}