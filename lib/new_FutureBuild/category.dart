import 'dart:convert';
import 'package:http/http.dart'as http;

//creating class to store the api data
// class Category{
//   final int id;
//    String title;
//    int price;
//    String imgUrl;
//    String category;
//    String description;
//    Rating rating;
//
//    //constructors
//    Category({required this.id,required this.title,required this.price,required this.imgUrl,required this.category,required this.description,required this.rating});
//
//    factory Category.fromJson(Map<String, dynamic> json) {
//      return Category(
//        id: json['id'],
//        title: json['title'],
//        price: json['price'],
//        description: json['description'],
//        category: json['category'],
//        imgUrl: json['image'],
//        rating: Rating.fromJson(json['rating']),
//      );
//    }
// }
//
// class Rating{
//   double rate;
//   int count ;
//
//   Rating({required this.rate,required this.count});
//
//   factory Rating.fromJson(Map<String, dynamic> json){
//     return Rating(
//         rate: json['rate'],
//         count: json['count']
//     );
//   }
// }


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
}