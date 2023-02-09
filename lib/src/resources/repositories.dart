import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/resources/movies_popular_api.dart';

class Repositories {
  final moviePopularApi =  MoviePopularApi();

  Future<MoviePopularModel> getPopularMovies() => moviePopularApi.getPopularMovie();
}