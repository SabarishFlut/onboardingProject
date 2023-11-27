import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screens/state_feature/home/homebloc_bloc.dart';
import 'package:flutter_screens/state_feature/home/ui/cart.dart';
import 'package:flutter_screens/state_feature/home/ui/product_tilewidget.dart';
import 'package:flutter_screens/state_feature/wishlist/wishlist.dart';

class StateHome extends StatefulWidget {
  const StateHome({Key? key}) : super(key: key);

  @override
  State<StateHome> createState() => _StateHomeState();
}

class _StateHomeState extends State<StateHome> {
  @override
  initState() {
    homeblocBloc.add(HomeInitialEvent());
    super.initState();
  }

  final HomeblocBloc homeblocBloc = HomeblocBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeblocBloc, HomeblocState>(
      bloc: homeblocBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartpageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
        } else if (state is HomeNavigateToWishListpageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WishList()));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );

          case HomeLoadSuccessState:
            final successstate = state as HomeLoadSuccessState;
            return Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                    onPressed: () {
                      homeblocBloc
                          .add(HomeProductWishListButtonClickedNavigateEvent());
                    },
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {
                      homeblocBloc
                          .add(HomeProductCartButtonClickedNavigateEvent());
                    },
                    icon: Icon(Icons.shopping_cart_outlined),
                  ),
                ],
                title: Text("Product App"),
                centerTitle: true,
              ),
              body: ListView.builder(
                  itemCount: successstate.products.length,
                  itemBuilder: (context, index) {
                    return ProductTileWidget(
                      homeblocBloc: homeblocBloc,
                        productDataModel: successstate.products[index]);
                  }),
              // body: Column(
              //   children: [
              //     for(var proddata in ProductData().clothproduct)
              //    Container(
              //      height: 10,
              //      width: 300,
              //      child: proddata[8],color: Colors.red,
              //    )
              //   ],
              // ),
            );

          case HomeErrorState:
            return Scaffold(
              body: Center(
                child: Text("Error"),
              ),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}

/*
return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  homeblocBloc
                      .add(HomeProductWishListButtonClickedNavigateEvent());
                },
                icon: Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {
                  homeblocBloc.add(HomeProductCartButtonClickedNavigateEvent());
                },
                icon: Icon(Icons.shopping_cart_outlined),
              ),
            ],
            title: Text("Product App"),
            centerTitle: true,
          ),
          // body: Column(
          //   children: [
          //     for(var proddata in ProductData().clothproduct)
          //    Container(
          //      height: 10,
          //      width: 300,
          //      child: proddata[8],color: Colors.red,
          //    )
          //   ],
          // ),
        );
*/
