part of 'homebloc_bloc.dart';

@immutable
abstract class HomeblocEvent {}

class HomeInitialEvent extends HomeblocEvent{}

class HomeProductWishListButtonClickedEvent extends HomeblocEvent {}

class HomeProductCartButtonClickedEvent extends HomeblocEvent {}

class HomeProductWishListButtonClickedNavigateEvent extends HomeblocEvent {}

class HomeProductCartButtonClickedNavigateEvent extends HomeblocEvent {}

// class HomeProductWishListButtonClickedEvent extends HomeblocBloc {}
//
// class HomeProductCartButtonClickedEvent extends HomeblocBloc {}
//
// class HomeProductWishListButtonClickedNavigateEvent extends HomeblocBloc {}
//
// class HomeProductCartButtonClickedNavigateEvent extends HomeblocBloc {}
