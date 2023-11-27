import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'your_api_key';

  Future<MovieModel> fetchMovieList() async {
    print("entered");
    final response = await client.get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey" as Uri);
    print("${response.body.toString()}**13");
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return MovieModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}