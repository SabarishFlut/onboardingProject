// import 'package:flutter/material.dart';
//
// List L1=[
//   {
//     "id": 1,
//     "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
//     "price": 109.95,
//     "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
//     "category": "men's clothing",
//     "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
//     "rating": {
//       "rate": 3.9,
//       "count": 120
//     }
//   },
//   {
//     "id": 2,
//     "title": "Mens Casual Premium Slim Fit T-Shirts ",
//     "price": 22.3,
//     "description": "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
//     "category": "men's clothing",
//     "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
//     "rating": {
//       "rate": 4.1,
//       "count": 259
//     }
//   },
// ];

/*import 'dart:convert';

List<ProductsModel> productsModelFromJson(String str) =>
    List<ProductsModel>.from(
        json.decode(str).map((x) => ProductsModel.fromJson(x)));

String productsModelToJson(List<ProductsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsModel {
  ProductsModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    id: json["id"],
    title: json["title"],
    price: json["price"].toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
    rating: Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
    "rating": rating!.toJson(),
  };
}

class Rating {
  Rating({
    this.rate,
    this.count,
  });

  final double? rate;
  final int? count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: json["rate"].toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };
}*/

import 'dart:ui';

class ProductsModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final Image image;
  final String catog;

  ProductsModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.price,
      required this.catog,
      required this.description});

  factory ProductsModel.fromMap(Map<String, dynamic> json) {
    return ProductsModel(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        price: json['price'],
        catog: json['catog'],
        description: json['description']);
  }
}
