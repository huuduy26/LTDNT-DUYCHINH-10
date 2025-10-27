import 'package:json_annotation/json_annotation.dart';

part 'annotation.g.dart'; // file sinh tự động

@JsonSerializable()
class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  // JSON -> Object
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  // Object -> JSON
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

