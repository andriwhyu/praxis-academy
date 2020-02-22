import 'dart:convert';
import 'dart:io';

import 'balance_inquiry.dart';
import 'deposit.dart';
import 'withdraw.dart';

class ATMMechine {
  void checkBalance(BalanceInquiry balanceInquiry) {
    String balanceAmount = balanceInquiry.getBalance.toString();
    String resultOfCurrencyFormat = formattingCurrency(balanceAmount);
    
    print("\n\tYour current balance is Rp. ${resultOfCurrencyFormat}\n");
  }

  String currencyStyling(int start, int end, int limit, String intCurrency) {
    String resultOfCurrency = "";
    int lengthIntCurrency = intCurrency.length;

    for(int i=1; i <= limit; i++) {
        if(i < limit) {
          resultOfCurrency += intCurrency.substring(start, (lengthIntCurrency-end))+",";
          start+=3;
          end-=3;
        } else {
          resultOfCurrency += intCurrency.substring(start, (lengthIntCurrency-end));
        }
      }

    return resultOfCurrency;
  }

  String formattingCurrency(String number) {
    int indexOfPoint = number.indexOf(".");
    String resultOfCurrencyFormat = "";

    String currency = number.substring(0, indexOfPoint);
    int lengthIntCurrency = currency.length;

    int start = 0;
    int end = lengthIntCurrency - 3;
    int limit = lengthIntCurrency ~/ 3;
  
    if(lengthIntCurrency % 3 == 0) {
      resultOfCurrencyFormat = currencyStyling(start, end, limit, currency);
    } else {
      int rest = lengthIntCurrency % 3;
      start = rest;
      end = lengthIntCurrency - rest -3;

      if(lengthIntCurrency > 2) {
        resultOfCurrencyFormat = currency.substring(0, rest) + "," + currencyStyling(start, end, limit, currency);
      } else {
        resultOfCurrencyFormat = currency.substring(0, rest);
      }
    }

    resultOfCurrencyFormat = resultOfCurrencyFormat + number.substring(indexOfPoint, number.length);
    
    return resultOfCurrencyFormat;
  }

  void withdrawMoney(Withdraw withdraw, BalanceInquiry balanceInquiry) {
    
    if(balanceInquiry.getBalance == 0) {
      print("\tYour current balance is zero");
      print("\tYou cannot withdraw");
      print("\tYou need to deposit money first");
    } else if(balanceInquiry.getBalance <= 100000) {
      print("\tYou do not have sufficient money for withdraw");
      print("\tChecked your balance to see your money in the bank");
    } else if(withdraw.getWithdraw > balanceInquiry.getBalance) {
      print("\tThe amount that you withdraw is greater than your balance");
      print("\tPlease check the amount you entered\n");
    } else {
      double balance = balanceInquiry.getBalance;
      double withdrawAmount = withdraw.getWithdraw;

      balanceInquiry.setBalance = balance-withdrawAmount;

      String balanceAmount = balanceInquiry.getBalance.toString();
      String resultOfCurrencyFormat = formattingCurrency(balanceAmount);

      print("\tCurrent balance is Rp. ${resultOfCurrencyFormat}\n");
    }
  }

  void depositMoney(Deposit deposit) {
    String depositInformation = deposit.getDeposit.toString();
    String resultOfCurrencyFormat = formattingCurrency(depositInformation);
    
    print("\tYour deposit amount Rp. ${resultOfCurrencyFormat}");
  }
}

void main() {
  Deposit deposit = new Deposit();
  Withdraw withdraw = new Withdraw();
  BalanceInquiry balanceInquiry = new BalanceInquiry();
  ATMMechine atmMechine = new ATMMechine();

  int select = 0;
  int choices;

  print("=============================================");
  print("\tWelcome to this simple ATM");
  print("=============================================\n");

  do {
    choices = 0;
    try {
      do {
        print("\tPlease select ATM Transactions");
        print("\tPress [1] Deposit");
        print("\tPress [2] Withdraw");
        print("\tPress [3] Balance Inquiry");
        print("\tPress [4] Exit");

        stdout.write("\tChoose Action: ");
        String userInput = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
        select = int.parse(userInput);
        
        switch(select) {
          case 1:
            stdout.write("\n\tEnter your deposit amount: ");
            dynamic depositAmount = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
            depositAmount = double.parse(depositAmount);
            deposit.setDeposit = depositAmount;
            balanceInquiry.setBalance = deposit.getDeposit + balanceInquiry.getBalance;
            atmMechine.depositMoney(deposit);
            atmMechine.checkBalance(balanceInquiry);
            break;
          case 2:
            print("\n\tTo withdraw, ensure you has sufficient balance");
            stdout.write("\n\tEnter your withdraw amount: ");
            dynamic withdrawAmount = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
            withdrawAmount = double.parse(withdrawAmount);
            withdraw.setWithdraw = withdrawAmount;
            atmMechine.withdrawMoney(withdraw, balanceInquiry);
            break;
          case 3:
            atmMechine.checkBalance(balanceInquiry);
            break;
          case 4 :
            choices = 2;
            print("\texit");
            break;
          default :
            print("\n\tYour choice is uncorrect, please enter your choice again\n");
        }
      } while(select > 4 || select < 1);

      while(choices > 2 || choices < 1) {
        try {
          print("\tDo you want take another transaction ?");
          print("\tPress [1] Yes\n\tPress [2] No");

          stdout.write("\n\tEnter your choices: ");
          String choice = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
          choices = int.parse(choice);

          if(choices > 2 || choices < 1) {
            print("\n\tYour choice is uncorrect, please enter your choice again\n");
          }
        } catch(e) {
          print("Error happen: ${e.message}");
        }
      } 
    } catch(e) {
      print("Error happen: ${e.message}");
    }
  } while(choices <= 1);
}