import 'package:movie_flutter/cores/http.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'dart:convert';

class MoviePopularApi {
  Future<MoviePopularModel> getPopularMovie() async {
    const url = 'popular';
    var response = await HttpClient().sendGet(url);
    return Future.value(MoviePopularModel.fromJson(json.decode(response.body)));
  }
}