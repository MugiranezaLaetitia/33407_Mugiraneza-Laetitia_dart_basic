// Student: Mugiraneza Laetitia
// Student ID: 33407
// D = 7, L = 7
class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO1: getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner (name must be at least 3 characters)
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Show card info
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO2: topUp (only 500 to 50000 RWF)
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO3: pay
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int _discount = 0;

  // ": super(owner, balance)" builds the parent BusCard first
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo(); // run the parent's showInfo first
    print('Student card: $_discount% off');
  }

  // TODO4: override pay with student discount
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

void main() {
  // My numbers: D = 7, L = 7
  // Starting balance = 1070 RWF, Bus fare = 207 RWF, Discount = 7%

  BusCard card = BusCard('Mugiraneza', 1070);
  card.owner = 'Al'; // refused: name too short
  card.showInfo();

  // TODO5
  card.owner = 'Mugiraneza Laetitia';
  card.showInfo();

  // TODO6
  card.topUp(100);   // refused
  card.topUp(2000);  // accepted

  // TODO7
  card.pay(207);
  card.pay(207);
  card.showInfo();

  // TODO8
  StudentCard student = StudentCard('Mugiraneza Laetitia', 1070, 7);

  // TODO9
  student.pay(207);
  student.showInfo();
}