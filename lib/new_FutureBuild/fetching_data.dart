// // import 'dart:convert';
// // import 'package:flutter/foundation.dart';
// // import 'package:http/http.dart'as http;
// //
// // Future<List> fetchProducts() async {
// //   final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
// //   if (response.statusCode == 200) {
// //     List<dynamic> data = jsonDecode(response.body);
// //     List cateogry = data.map((item) => Category.fromJson(item)).toList();
// //     return cateogry;
// //   } else {
// //     throw Exception('Failed to load data');
// //   }
// // }
//
// import 'package:get/get.dart';
//
// class ProductController extends GetxController {
//   var isLoading = true.obs;
//   var productList = [].obs;
//
//
//   @override
//   void onInit() {
//     fetchProducts();
//     super.onInit();
//   }
//
//   void fetchProducts() async {
//     try {
//       isLoading(true);
//       var products = await HttpService.fetchProducts();
//       if (products != null) {
//         productList.value = products;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }
