class BankAccount {
  String _owner;
  double _balance;

  static String bankName = "Future Bank";

  BankAccount(this._owner, this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposit successful. New balance: $_balance");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance && amount > 0) {
      _balance -= amount;
      print("Withdrawal successful. Remaining balance: $_balance");
    } else {
      print("Insufficient balance or invalid amount.");
    }
  }

  void accountInfo() {
    print("Bank: $bankName");
    print("Owner: $_owner");
    print("Balance: $_balance");
    print("--------------------");
  }
}

void main() {
  BankAccount acc1 = BankAccount("Ama", 500);
  BankAccount acc2 = BankAccount("Kojo", 1000);

  acc1.deposit(200);
  acc1.withdraw(100);

  acc2.withdraw(1500);

  acc1.accountInfo();
  acc2.accountInfo();
}
