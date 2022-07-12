/// To parse this [JSON data] do
/// final productModel = productModelFromJson(jsonString);


import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));
String productModelTooJson(ProductModel data) => json.encode(data.toJson());


class ProductModel {
  String name;
  String url;
  double price;
  bool favorite;
  String title;
  String subtitle;
  int battery;
  int color;

  ProductModel({
    required this.name,
    required this.url,
    required this.price,
    required this.favorite,
    required this.title,
    required this.subtitle,
    required this.battery,
    required this.color
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => 
  ProductModel(
    name: json['name'],
    url: json['url'],
    price: json['price'],
    favorite: json['favorite'],
    title: json['title'],
    subtitle: json['subtitle'],
    battery: json['battery'],
    color: json['color']
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'url': url,
    'price': price,
    'favorite': favorite,
    'title': title,
    'subtile': subtitle,
    'battery': battery,
    'color': color
  };
}