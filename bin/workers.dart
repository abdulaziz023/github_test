import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<void> main() async {
  //https://67dc03401fd9e43fe476d85d.mockapi.io/
  Uri url = Uri.https("67dc03401fd9e43fe476d85d.mockapi.io", "/tencent/3");
  // Response get = await http.get(url);
  // List body = jsonDecode(get.body);
  // List<Tencent> result = body.map((e) => Tencent.fromJson(e)).toList();
  // for (var e in result) {
  //   print(e);
  // }
  // Response post = await http.post(url, body: {
  //   "director_name": "Chen",
  //   "maneger_name": "Huang",
  //   "front_dev_name": "Daniel",
  //   "back_dev_name": "Pablo",
  //   "project_name": "Player Unknow Battle Ground",
  // });
  // print(post.statusCode);
  // print(post.body);

  //put qilinganda url ga id bering
  Response put = await http.put(url, body: {
    "director_name": "Pen",
  });
  print(put.statusCode);
  print(put.body);
}

class Tencent {
  String director_name;
  String maneger_name;
  String front_dev_name;
  String back_dev_name;
  String project_name;
  String id;

  Tencent({
    required this.director_name,
    required this.maneger_name,
    required this.front_dev_name,
    required this.back_dev_name,
    required this.project_name,
    required this.id,
  });
  factory Tencent.fromJson(Map<String, Object?> json) {
    return Tencent(
      director_name: json["director_name"] as String,
      maneger_name: json["maneger_name"] as String,
      front_dev_name: json["front_dev_name"] as String,
      back_dev_name: json["back_dev_name"] as String,
      project_name: json["project_name"] as String,
      id: json["id"] as String,
    );
  }
  @override
  String toString() {
    return '''
DirectorName $director_name
ManegerName $maneger_name
FrontDevName $front_dev_name
BackDevName $back_dev_name
ProjectName $project_name
Id $id
    ''';
  }
}
