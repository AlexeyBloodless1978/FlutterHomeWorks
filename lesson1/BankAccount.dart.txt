void main() {
  var newAccount= BankAccount('0124545');
 print (newAccount.getBalance());
 newAccount.deposit(-2);
 newAccount.deposit(5);
 print (newAccount.getBalance());
newAccount.withdraw(-10);
newAccount.withdraw(10); 
newAccount.withdraw(2);  
  print (newAccount.getBalance()); 
}

class BankAccount {
  String accountNumber;
  String _accountNumber;
  double _balance;
  double amount=0;
  BankAccount(this.accountNumber) : _accountNumber=accountNumber, _balance=0;
    
 void deposit (amount) {
   if (amount>0) {
    _balance=_balance+amount; 
   } else 
   {
     print ('Нельзя пополнить баланс отрицательной или нулевой суммой');
   }   
 }
  
  void withdraw (amount) {
   if (amount>_balance) {
      print ('Нельзя снять больше, чем есть на счете'); }
    else if (amount<0) {
       print ('Нельзя снять отрицательную сумму'); }
    else 
    {
      _balance=_balance-amount; 
    } 
  }

  
 getBalance () {
   return _balance;
 } 
  
}
