import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.https("67d01b79823da0212a84a7a3.mockapi.io", "/api/names");
  var response = await http.get(url);
  print(response.statusCode);
  if (response.statusCode == 200 || response.statusCode == 201) {
    Names names = Names.fromJson(jsonDecode(response.body));
  }
}

class Main {
  List<Names> names;
  Main({required this.names});
  factory Main.fromJson(Map<String, Object?> json) => Main(
        names: (["names"] as List)
            .map(
              (e) => Names.fromJson(e),
            )
            .toList(),
      );
}

class Names {
  String name;
  String lastname;
  int phoneNumber;
  String id;
  Names({
    required this.id,
    required this.name,
    required this.lastname,
    required this.phoneNumber,
  });

  factory Names.fromJson(Map<String, Object?> json) {
    return Names(
      id: ["id"] as String,
      name: ["name"] as String,
      lastname: ["lastname"] as String,
      phoneNumber: ["phoneNumber"] as int,
    );
  }
  @override
  String toString() {
    return '''
    id-$id
    name-$name
    lastname-$lastname
    phoneNumber-$phoneNumber
    ''';
  }
}
