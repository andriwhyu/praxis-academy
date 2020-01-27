import 'dart:math';

import 'package:flutter/widgets.dart';

class ProviderLogic extends ChangeNotifier {
  String _isSearch = "not";
  String _cityName = "Surabaya";
  double _temperature = 35;

  String get isSearch => _isSearch;

  set isSearch(String val) {
    _isSearch = val;
    notifyListeners();
  }

  String get cityName => _cityName;

  set cityName(String val) {
    _cityName = val;
    notifyListeners();
  }

  double get temperature => _temperature;

  set temperature(double val) {
    _temperature = val;
    notifyListeners();
  }

  setTemperature() {
    temperature = 20 + Random().nextInt(15) + Random().nextDouble();
  }

  setCityName(String cityNames) {
    cityName = cityNames;
  }
}