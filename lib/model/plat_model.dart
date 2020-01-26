// To parse this JSON data, do
//
//     final plat = platFromJson(jsonString);

import 'dart:convert';

List<Plat> platFromJson(String str) =>
    List<Plat>.from(json.decode(str).map((x) => Plat.fromJson(x)));

String platToJson(List<Plat> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Plat {
  String id;
  String nama;
  String noPlat;

  Plat({
    this.id,
    this.nama,
    this.noPlat,
  });

  factory Plat.fromJson(Map<String, dynamic> json) => Plat(
        id: json["id"],
        nama: json["nama"],
        noPlat: json["no_plat"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "no_plat": noPlat,
      };
}
