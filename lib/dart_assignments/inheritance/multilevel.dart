// Grandparent class
class Bank {
  String bankName;

  Bank(this.bankName);

  void displayBankName() {
    print('Bank Name: $bankName');
  }
}

// Parent class
class Branch extends Bank {
  String branchName;

  Branch(String bankName, this.branchName) : super(bankName);

  void displayBranchName() {
    print('Branch Name: $branchName');
  }
}

// Child class
class Account extends Branch {
  String accountType;

  Account(String bankName, String branchName, this.accountType)
      : super(bankName, branchName);

  void displayAccountType() {
    print('Account Type: $accountType');
  }
}

void main() {
  Account myAccount = Account('ABC Bank', 'Main Branch', 'Savings');
  myAccount.displayBankName();
  myAccount.displayBranchName();
  myAccount.displayAccountType();
}
