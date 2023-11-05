void main(List<String> args) {
  Logistics logistics = SeaLogistics();
  print(logistics.runtimeType);
  logistics = RoadLogistics();
  print(logistics.runtimeType);
  logistics = AirLogistics();
  print(logistics.runtimeType);
}

// abstract creator
abstract class Logistics {
  late final Transport transport;

  Logistics() {
    transport = createTransport();
    transport.deliver();
  }

  Transport createTransport();
}

// concrete creator
class SeaLogistics extends Logistics {
  @override
  Transport createTransport() {
    return Ship();
  }
}

// concrete creator
class RoadLogistics extends Logistics {
  @override
  Transport createTransport() {
    return Truck();
  }
}

// concrete creator
class AirLogistics extends Logistics {
  @override
  Transport createTransport() {
    return Plane();
  }
}

// abstract product
abstract class Transport {
  void deliver();
}

// concrete product
class Truck implements Transport {
  @override
  void deliver() {
    print('Delivering by road...');
  }
}

// concrete product
class Ship implements Transport {
  @override
  void deliver() {
    print('Delivering by sea...');
  }
}

// concrete product
class Plane implements Transport {
  @override
  void deliver() {
    print('Delivering by air...');
  }
}
