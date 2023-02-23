part of 'detail_movie_bloc.dart';

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