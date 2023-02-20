import 'package:equatable/equatable.dart';
import 'package:movie_flutter/src/models/detail_movie_model/detail_movie_model.dart';

abstract class DetailMovieState extends Equatable {
  const DetailMovieState();

  @override
  List<Object> get props => [];
}

class LoadingDetailMovieState extends DetailMovieState {}

class LoadedDetailMovieState extends DetailMovieState {
  final DetailMovieModel detailMovie;

  const LoadedDetailMovieState(this.detailMovie);

  @override
  List<Object> get props => [detailMovie];
}