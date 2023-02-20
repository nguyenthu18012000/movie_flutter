import 'package:movie_flutter/src/models/detail_movie_model/detail_movie_model.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/resources/detail_movie_api.dart';
import 'package:movie_flutter/src/resources/movies_popular_api.dart';

class Repositories {
  final moviePopularApi =  MoviePopularApi();
  final detailMovieApi = DetailMovieApi();

  Future<MoviePopularModel> getPopularMovies() => moviePopularApi.getPopularMovie();
  Future<DetailMovieModel> getDetailMovie() => detailMovieApi.getDetailMovie(238);
}