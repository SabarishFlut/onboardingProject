import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screens/hive_practice/prac.dart';
import 'package:http/http.dart'as http;

class RestApi extends StatelessWidget {
   RestApi(this.item,{Key? key}) : super(key: key);

   final ProductsModel item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RestApi"),centerTitle: true,),
        body: Center(
          // child: FutureBuilder<List<ProductsModel>>(
          //   //future: products,
          //   // builder: (context, snapshot) {
          //   //   if (snapshot.hasError) print(snapshot.error);
          //   //   return snapshot.hasData
          //   //       ? ProductsList(items: snapshot.data, key: null,)
          //   //       : Center(child: CircularProgressIndicator());
          //   // },
          // ),
        ));
      // body: ListView.builder(
      //     //itemCount: item.,
      //     itemBuilder: (context,index){
      //  final  users = [index];
      //   return ListTile(
      //     leading: Text("${index+1}"),
      //     title: Column(
      //       children: [
      //         Text("${item.id}"),
      //         Text("${item.title}"),
      //         Text("${item.description}"),
      //       ],
      //     ),
      //   );
      // }),
      // floatingActionButton:  FloatingActionButton(
      //   onPressed: (){
      //     fetchUsers();
      //     },
      // ),
  }

  // void fetchUsers()async{
// Future <List<ProductsModel>> fetchProduct()async{
//     final responce = http.get(Uri.parse(url));
// }

String url = "https://fakestoreapi.com/products/1";
}

class ProductList extends StatelessWidget {
  late final List<ProductsModel> items;

  ProductList({required Key key, required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        //return ProductList(item: items[index],key: null,);
      },
    );
  }
}

