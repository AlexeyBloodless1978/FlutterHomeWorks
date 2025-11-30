void main() {}

class Vehicle {
  void drive(int? speedIn) {}
  void stop() {}
}

class Car extends Vehicle {
  int speed = 0;
  String color;
  String _engineStatus;

  Car(this.color) : _engineStatus = 'Не работает';

  @override
  void drive(int? speedIn) {
    if (speedIn != null) {
      speed = speedIn;
    } else {
      speed = 0;
    }

    _engineStatus = 'Работает';
  }

  @override
  void stop() {
    _engineStatus = 'Не работает';
    speed = 0;
  }

  checkMaxSpeed(int maxSpeed) {
    if (speed > maxSpeed) {
      print('Максимальная скорость превышена');
    }
  }
}

class Bicycle extends Vehicle {
  int speed = 0;
  String color;
  String engineStatus;

  Bicycle(this.color) : engineStatus = 'Не работает';

  @override
  void drive(int? speedIn) {
    if (speedIn != null) {
      speed = speedIn;
    } else {
      speed = 0;
    }

    engineStatus = 'Работает';
  }

  @override
  void stop() {
    engineStatus = 'Не работает';
    speed = 0;
  }

  checkMaxSpeed(int maxSpeed) {
    if (speed > maxSpeed) {
      print('Максимальная скорость превышена');
    }
  }
}
