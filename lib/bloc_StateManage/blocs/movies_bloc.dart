import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_model.dart';


class MoviesBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<MovieModel>();
  Stream<MovieModel> get allMovies => _moviesFetcher.stream;
  //Observable<ItemModel> get allMovies async => _moviesFetcher.stream;

  fetchAllMovies() async {
    MovieModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();