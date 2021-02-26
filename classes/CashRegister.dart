import 'Paise.dart';
import 'Rupee.dart';

/* 
  A cashRegister totals up sales and computes change due. 
*/

class CashRegister {
  static final Rupee _paiseVal = Rupee(0.01);

  double _purchase;
  double _payment;

  CashRegister() {
    /* Constructs a cashRegister class with no money in it.  */
    _purchase = 0;
    _payment = 0;
  }

  void recordPurchase(double amount) {
    /* Records the purchase price of an item.  */
    _purchase = _purchase + amount;
  }

  void receivePayment(double rupees, double paise) {
    /* Processes the payment received from the customer */
    _payment = rupees + paise * _paiseVal.getVal();
  }

  double giveChange() {
    /* Computes the change due and resets the machine for the next
		customer. */
    double change = _payment - _purchase;
    _payment = 0;
    _purchase = 0;
    return change;
  }
}

void main() {
  CashRegister myRegister = new CashRegister();
  myRegister.recordPurchase(11);
  myRegister.recordPurchase(0.8);
  myRegister.recordPurchase(9);
  myRegister.receivePayment(25, 0);
  print(myRegister.giveChange());
}
