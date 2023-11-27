import 'dart:async';
import 'package:flutter_screens/bloc_StateManage/resources/item_Api_Provider.dart';
import '../models/item_model.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future fetchAllMovies() => moviesApiProvider.fetchMovieList();
}