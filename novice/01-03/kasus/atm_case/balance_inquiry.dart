import 'atm_mechine.dart';

class BalanceInquiry extends ATMMechine {
  double balance = 0;

  // BalanceInquiry(this.balance);

  void set setBalance (double balance) {
    this.balance = balance;
  }

  double get getBalance {
    return balance;
  }

}