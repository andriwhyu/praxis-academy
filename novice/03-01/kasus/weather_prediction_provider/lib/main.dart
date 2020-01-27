import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_prediction_provider/provider_logic.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderLogic>.value(
          value: ProviderLogic(),
        )
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
