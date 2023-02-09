part of 'popular_movies_bloc.dart';

abstract class PopularMoviesEvent extends Equatable {
  const PopularMoviesEvent();

  @override
  List<Object> get props => [];
}

class LoadingPopularMoviesEvent extends PopularMoviesEvent {}

class LoadedPopularMoviesEvent extends PopularMoviesEvent {
  final MoviePopularModel moviePopular;

  const LoadedPopularMoviesEvent(this.moviePopular);
  
  @override
  List<Object> get props => [moviePopular];
}