import 'package:flutter/material.dart';
import 'package:flutter_screens/state_feature/home/homebloc_bloc.dart';
import 'package:flutter_screens/state_feature/home/models/home_ProductData_Model.dart';

class ProductTileWidget extends StatelessWidget {

  final ProductDataModel productDataModel; //instance of productdatamodel
  final HomeblocBloc homeblocBloc;
  const ProductTileWidget({Key? key, required this.productDataModel, required this.homeblocBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(productDataModel.id == 1)
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: (productDataModel.image))),
          ),
          Text("ID :${productDataModel.id.toString()}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
            productDataModel.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(productDataModel.description, style: TextStyle(fontSize: 12)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price \$:${productDataModel.price.toString()}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(width: 120,),
              IconButton(
                onPressed: () {
                  homeblocBloc.add(HomeProductWishListButtonClickedNavigateEvent());
                  // homeblocBloc
                  //     .add(HomeProductWishListButtonClickedNavigateEvent());
                },
                icon: Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {
                  homeblocBloc.add(HomeProductCartButtonClickedEvent());
                  // homeblocBloc
                  //     .add(HomeProductCartButtonClickedNavigateEvent());
                },
                icon: Icon(Icons.shopping_cart_outlined),
              ),
            ],
          )
        ],
      ),
    );
  }
}
