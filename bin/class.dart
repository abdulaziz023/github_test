void main() {
  Audi audiRs6 = Audi(
      name: "Audi",
      model: "rs6",
      price: 336000,
      hoursePower: 1080,
      nm: 98,
      color: "Black",
      seatCount: 4);

  final edited = audiRs6.copyWith(color: "Black Cherry");
  print(edited);
}

class Audi {
  String name;
  String model;
  double price;
  int hoursePower;
  int nm;
  String color;
  int seatCount;

  Audi({
    required this.name,
    required this.model,
    required this.price,
    required this.hoursePower,
    required this.nm,
    required this.color,
    required this.seatCount,
  });
  Audi copyWith({
    String? name,
    String? model,
    double? price,
    int? hoursePower,
    int? nm,
    String? color,
    int? seatCount,
  }) {
    return Audi(
      name: name ?? this.name,
      model: model ?? this.model,
      price: price ?? this.price,
      hoursePower: hoursePower ?? this.hoursePower,
      nm: nm ?? this.nm,
      color: color ?? this.color,
      seatCount: seatCount ?? this.seatCount,
    );
  }

  @override
  String toString() {
    return '''
  name-$name,
  model-$model,
  price-$price \$,
  hoursePower-$hoursePower
  nm-$nm,
  color-$color,
  seatCount-$seatCount,
''';
  }
}
