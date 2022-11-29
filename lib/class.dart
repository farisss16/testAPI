// ignore_for_file: camel_case_types

import 'package:http/http.dart' as http;

class Products {
  final int id;
  final String name;
  final String image;
  final int harga;
  final int stock;
  final String title;

  Products({
    required this.id,
    required this.name,
    required this.image,
    required this.harga,
    required this.stock,
    required this.title,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      harga: json['harga'],
      stock: json['stock'],
      title: json['title'],
    );
  }
}
