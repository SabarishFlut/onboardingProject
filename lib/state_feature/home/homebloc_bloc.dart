import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_screens/state_Data/product_data.dart';
import 'package:flutter_screens/state_feature/home/models/home_ProductData_Model.dart';
import 'package:meta/meta.dart';

part 'homebloc_event.dart';

part 'homebloc_state.dart';

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWishListButtonClickedNavigateEvent>(
        homeProductWishListButtonClickedNavigateEvent);
    on<HomeProductCartButtonClickedNavigateEvent>(
        homeProductWishCartButtonClickedNavigateEvent);
    on<HomeProductWishListButtonClickedEvent>(
        homeProductWishListButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
  }

  void homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeblocState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadSuccessState(
        products: ProductData().clothproduct.map((e) => ProductDataModel(
            id: e['id'],
            title: e['title'],
            price: e['price'],
            description: e['description'],
            category: e['category'],
            image: e['image'])).toList()
    ));
  }

  void homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event, Emitter<HomeblocState> emit) {
    print("Cart Product clicked ");
  }

  void homeProductWishListButtonClickedEvent(
      HomeProductWishListButtonClickedEvent event,
      Emitter<HomeblocState> emit) {
    print("Wishlist Product clicked ");
  }

  void homeProductWishListButtonClickedNavigateEvent(
      HomeProductWishListButtonClickedNavigateEvent event,
      Emitter<HomeblocState> emit) {
    print("wishlist Navigate clicked ");
    emit(HomeNavigateToWishListpageActionState());
  }

  void homeProductWishCartButtonClickedNavigateEvent(
      HomeProductCartButtonClickedNavigateEvent event,
      Emitter<HomeblocState> emit) {
    print("Cart Navigate clicked ");
    emit(HomeNavigateToWishListpageActionState());
  }
}
