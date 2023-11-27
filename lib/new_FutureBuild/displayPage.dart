import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'category.dart';

class ApiDisplay extends StatefulWidget {
  const ApiDisplay({Key? key}) : super(key: key);

  @override
  State<ApiDisplay> createState() => _ApiDisplayState();
}

class _ApiDisplayState extends State<ApiDisplay> {
  double h = 500;
  double w = 500;
  Color _color = Colors.lightBlueAccent;
  double _defaultOpacity = 1;

  // animate() {
  //   setState(() {
  //     _defaultOpacity = _defaultOpacity == 1 ? 0 : 1;
  //   });
  // }

  Future<List> fetchProducts() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List cateogry = data.map((item) => ProductsModel.fromJson(item)).toList();
      return cateogry;
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Future<List<ProductsModel>> getCategory() async {
  //   const url = "https://fakestoreapi.com/products";
  //   final uri = Uri.parse(url);
  //   final response = await http.get(uri);
  //   //var response = await http.get("https://fakestoreapi.com/products");
  //   var jsonData = json.decode(response.body);
  //   var result = jsonData['title'];
  //   print("${jsonData}**27");
  //   List<ProductsModel> Categories = [];
  //
  //   for (var c in jsonData) {
  //     ProductsModel category = ProductsModel(
  //       id: c['id'],
  //       title: c['title'],
  //       price: c['price'],
  //       image: c['image'],
  //       category: c['category'],
  //       description: c['description'],
  //       rating: c['Rating'],
  //     );
  //     Categories.add(category);
  //   }
  //   return Categories;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RestApi"),
      ),
      body:  Center(
        // Step 3: Use FutureBuilder
        child: FutureBuilder<List>(
          future: fetchProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              print('Error: ${snapshot.error }**74');
              print("${snapshot.data}**77");
              return Text('Error: ${snapshot.error }**74');
            } else {
              List? products = snapshot.data;
              print("${snapshot.data}**77");
              return ListView.builder(
                itemCount: products?.length ?? 0,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(products![index].title),
                    subtitle: Text(products[index].category),
                    leading: Image.network(products[index].image),
                  );
                },
              );
            }
          },
        ),
      ),
      // body: Row(
      //   children: [
      //     InkWell(
      //       child: AnimatedOpacity(
      //         duration:Duration(seconds: 3),
      //         opacity: _defaultOpacity,
      //         child: Container(
      //           height: h,
      //           width: w,
      //           decoration: BoxDecoration(color: _color),
      //         ),),
      //     )
      //   ],
      // ),
    );
  }
}



// Step 1: Model Class
/*class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      category: json['category'],
      image: json['image'],
    );
  }
}

// Step 2: Fetch Data
Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    List<Product> products = data.map((item) => Product.fromJson(item)).toList();
    return products;
  } else {
    throw Exception('Failed to load data');
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: Center(
          // Step 3: Use FutureBuilder
          child: FutureBuilder<List<Product>>(
            future: fetchProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                List<Product>? products = snapshot.data;
                return ListView.builder(
                  itemCount: products?.length ?? 0,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(products![index].title),
                      subtitle: Text(products[index].category),
                      leading: Image.network(products[index].image),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}*/
