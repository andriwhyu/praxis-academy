import 'atm_mechine.dart';

class Withdraw extends ATMMechine {
  double withdraw = 0;

  void set setWithdraw(double withdraw) {
    this.withdraw = withdraw;
  }

  double get getWithdraw {
    return withdraw;
  }
}