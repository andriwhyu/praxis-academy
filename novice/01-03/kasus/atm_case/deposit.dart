import 'atm_mechine.dart';

class Deposit extends ATMMechine {
  double deposit = 0;

  void set setDeposit (double deposit) {
    this.deposit = deposit;
  }

  double get getDeposit {
    return deposit;
  }
}