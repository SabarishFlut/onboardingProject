part of 'homebloc_bloc.dart';

@immutable
abstract class HomeblocState {}

abstract class HomeActionState extends HomeblocState {}

class HomeblocInitial extends HomeblocState {}

class HomeLoadingState extends HomeblocState{}

class HomeLoadSuccessState extends HomeblocState{
  final List<ProductDataModel> products;
  HomeLoadSuccessState({required this.products});
}

class HomeErrorState extends HomeblocState{}


class HomeNavigateToWishListpageActionState extends HomeActionState{}

class HomeNavigateToCartpageActionState extends HomeActionState{}
