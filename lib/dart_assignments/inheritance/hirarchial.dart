// Parent class
class Device {
  String brand;

  Device(this.brand);

  void displayBrand() {
    print('Brand: $brand');
  }
}

// Child class 1
class Mobile extends Device {
  String model;

  Mobile(String brand, this.model) : super(brand);

  void displayModel() {
    print('Model: $model');
  }
}

// Child class 2
class Smartphone extends Mobile {
  bool hasTouchScreen;

  Smartphone(String brand, String model, this.hasTouchScreen)
      : super(brand, model);

  void displayTouchScreen() {
    print('Has Touch Screen: $hasTouchScreen');
  }
}

// Child class 3
class Tablet extends Mobile {
  bool hasStylus;

  Tablet(String brand, String model, this.hasStylus) : super(brand, model);

  void displayStylus() {
    print('Has Stylus: $hasStylus');
  }
}

void main() {
  Smartphone iphone = Smartphone('Apple', 'iPhone', true);
  iphone.displayBrand();
  iphone.displayModel();
  iphone.displayTouchScreen();

  print('');

  Tablet ipad = Tablet('Apple', 'iPad', true);
  ipad.displayBrand();
  ipad.displayModel();
  ipad.displayStylus();
}
