import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ProductDataModel{
  int id ;
  String title;
  int price;
  String description;
  String category;
  NetworkImage image;

  ProductDataModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      });
}