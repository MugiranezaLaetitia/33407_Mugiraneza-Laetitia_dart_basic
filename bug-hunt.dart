// Student: Mugiraneza Laetitia
// Registration Number: 33407
// Part 4: Bug Hunt

class Phone {
  String _brand = '';
  int _battery = 0;

  // Constructor
  Phone(String brand, int battery) {
    _brand = brand;
    _battery = battery;
  }

  // FIX 2: getter for brand
  String get brand {
    return _brand;
  }

  // Getter for battery
  int get battery {
    return _battery;
  }

  // Setter for battery
  set battery(int value) {
    if (value >= 0 && value <= 100) {
      _battery = value;
    } else {
      // FIX 1: report invalid values instead of ignoring them
      print('Error: battery must be 0 to 100');
    }
  }

  // Restart method
  void restart() {
    print('Restarting phone');
  }
}

class SmartPhone extends Phone {
  String _system = '';

  // Constructor
  SmartPhone(String brand, int battery, String system)
      : super(brand, battery) {
    _system = system;
  }

  @override
  void restart() {
    print('Restarting $_system');
  }
}

void main() {
  Phone p = Phone('Tecno', 50); // FIX 3: no "new" needed

  p.battery = 100;
  print(p.battery);

  p.battery = 150; // refused
  print(p.battery);

  p.restart();

  // FIX 4: test the subclass override
  SmartPhone s = SmartPhone('Tecno', 80, 'Android');
  s.restart();
  print('${s.brand} battery: ${s.battery}');
}