import 'package:flutter/foundation.dart';

class ProductEntity {
  final String name;
  final String category;
  final String value;
  final String imageLink;

  ProductEntity(
      {required this.name,
      required this.category,
      required this.value,
      required this.imageLink});

  factory ProductEntity.fromJson(Map<String, dynamic> json) {
    return ProductEntity(
        name: json['name'],
        category: json['category'],
        value: json['value'],
        imageLink: json['imageLink']);
  }
}
