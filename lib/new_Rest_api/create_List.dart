import 'package:flutter/material.dart';
import 'create_Modelclass.dart';
import 'create_Obj.dart';

class FruitList extends StatelessWidget {
  final List<Fruit> items;

  FruitList({required Key key, required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FruitItem(item: items[index]);
      },
    );
  }
}
