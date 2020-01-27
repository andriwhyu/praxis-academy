import 'package:bloc_practice/bloc/bloc.dart';
import 'package:bloc_practice/bloc/weather_bloc.dart';
import 'package:bloc_practice/model/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  WeatherPage({Key key}) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final weatherBloc = WeatherBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Prediction"),
      ),
      body: BlocProvider(
        bloc: weatherBloc,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: BlocListener(
            bloc: weatherBloc,
            listener: (BuildContext context, WeatherState state) {
              if (state is WeatherLoaded) {
                print("Loaded: ${state.weather.cityName}");
              }
            },
            child: BlocBuilder(
              bloc: weatherBloc,
              builder: (BuildContext context, WeatherState state) {
                if (state is WeatherInitial) {
                  return buildInitialInput();
                } else if (state is WeatherLoading) {
                  return buildLoading();
                } else if (state is WeatherLoaded) {
                  return buildColumnWithData(state.weather);
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInitialInput() {
    return Center(
      child: CityTextField(),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Column buildColumnWithData(Weather weather) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          weather.cityName,
          style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700),
        ),
        Text(
          "${weather.temperature.toStringAsFixed(1)} °C",
          style: TextStyle(
            fontSize: 80.0,
          ),
        ),
        CityTextField()
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    weatherBloc.dispose();
  }
}

class CityTextField extends StatefulWidget {
  const CityTextField({
    Key key,
  }) : super(key: key);

  @override
  _CityTextFieldState createState() => _CityTextFieldState();
}

class _CityTextFieldState extends State<CityTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: submitCityName,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            hintText: "Enter City Name",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }

  void submitCityName(String cityName) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    weatherBloc.dispatch(GetWeather(cityName));
  }
}
