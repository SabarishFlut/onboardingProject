// // import 'package:flutter/material.dart';
// //
// // class ItemModel {
// //   int _page;
// //   int _total_results;
// //   int  _total_pages;
// //   List<_Result> _results = [];
// //
// // ItemModel(this._page,this._total_pages,this._total_results,this._results);
// //
// //   ItemModel.fromJson(Map<String, dynamic> parsedJson){
// //          _page = parsedJson['page'];
// //          _total_results = parsedJson['total_results'];
// //          _total_pages = parsedJson['total_pages'];
// //      List<_Result> temp = [];
// //      for (int i = 0; i < parsedJson['results'].length; i++) {
// //        _Result result = _Result(parsedJson['results'][i]);
// //        temp.add(result);
// //        _results = temp;
// //      }
// //
// //   }
// //
// //   List<_Result> get results => _results;
// //
// //   int get total_pages => _total_pages;
// //
// //   int get total_results => _total_results;
// //
// //   int get page => _page;
// // }
// //
// // class _Result {
// //   int _vote_count;
// //   int _id;
// //   bool _video;
// //   var _vote_average;
// //   String _title;
// //   double _popularity;
// //   String _poster_path;
// //   String _original_language;
// //   String _original_title;
// //   List<int> _genre_ids = [];
// //   String _backdrop_path;
// //   bool _adult;
// //   String _overview;
// //   String _release_date;
// //
// //   _Result(result) {
// //     _vote_count = result['vote_count'];
// //     _id = result['id'];
// //     _video = result['video'];
// //     _vote_average = result['vote_average'];
// //     _title = result['title'];
// //     _popularity = result['popularity'];
// //     _poster_path = result['poster_path'];
// //     _original_language = result['original_language'];
// //     _original_title = result['original_title'];
// //     for (int i = 0; i < result['genre_ids'].length; i++) {
// //       _genre_ids.add(result['genre_ids'][i]);
// //     }
// //     _backdrop_path = result['backdrop_path'];
// //     _adult = result['adult'];
// //     _overview = result['overview'];
// //     _release_date = result['release_date'];
// //   }
// //
// //   String get release_date => _release_date;
// //
// //   String get overview => _overview;
// //
// //   bool get adult => _adult;
// //
// //   String get backdrop_path => _backdrop_path;
// //
// //   List<int> get genre_ids => _genre_ids;
// //
// //   String get original_title => _original_title;
// //
// //   String get original_language => _original_language;
// //
// //   String get poster_path => _poster_path;
// //
// //   double get popularity => _popularity;
// //
// //   String get title => _title;
// //
// //   double get vote_average => _vote_average;
// //
// //   bool get video => _video;
// //
// //   int get id => _id;
// //
// //   int get vote_count => _vote_count;
// // }
//
// class ItemModel {
//   int _page;
//   int _total_results;
//   int _total_pages;
//   List<_Result> _results = [];
//
//   ItemModel(
//       this._page,
//       this._total_pages,
//       this._total_results,
//       this._results
//       );
//
//   ItemModel.fromJson(Map<String, dynamic> parsedJson) {
//     _page = parsedJson['page'];
//     _total_results = parsedJson['total_results'];
//     _total_pages = parsedJson['total_pages'];
//
//     List<_Result> temp = [];
//     for (int i = 0; i < parsedJson['results'].length; i++) {
//       _Result result = _Result();
//       temp.add(result);
//     }
//     _results = temp; // This line was moved outside of the loop
//   }
//
//   List<_Result> get results => _results;
//
//   int get total_pages => _total_pages;
//
//   int get total_results => _total_results;
//
//   int get page => _page;
// }
//
// class _Result {
//   // ... (rest of the code remains the same)
// }

class MovieModel {
  int? _userId;
  int? _id;
  String? _title;
  String? _body;

  MovieModel({int? userId, int? id, String? title, String? body}) {
    if (userId != null) {
      this._userId = userId;
    }
    if (id != null) {
      this._id = id;
    }
    if (title != null) {
      this._title = title;
    }
    if (body != null) {
      this._body = body;
    }
  }

  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get body => _body;
  set body(String? body) => _body = body;

  MovieModel.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
    _body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['id'] = this._id;
    data['title'] = this._title;
    data['body'] = this._body;
    return data;
  }
}
