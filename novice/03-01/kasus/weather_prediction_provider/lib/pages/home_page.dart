import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_prediction_provider/provider_logic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ProviderLogic providerLogic = Provider.of<ProviderLogic>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather Prediction Using Provider",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "${providerLogic.cityName}",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
            ),
            Text(
              "${providerLogic.temperature.toStringAsFixed(1)} °C",
              style: TextStyle(fontSize: 80),
            ),
            CityInputField()
          ],
        ),
      ),
    );
  }
}

class CityInputField extends StatefulWidget {
  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  @override
  Widget build(BuildContext context) {
    ProviderLogic providerLogic = Provider.of<ProviderLogic>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: TextField(
        onSubmitted: (newValue) {
          providerLogic.setCityName(newValue);
          providerLogic.setTemperature();
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            hintText: "Enter City Name",
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }
}
