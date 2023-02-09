part of 'popular_movies_bloc.dart';

abstract class PopularMoviesState extends Equatable {
  const PopularMoviesState();
  
  @override
  List<Object> get props => [];
}

class LoadingPopularMoviesState extends PopularMoviesState {}

class LoadedPopularMoviesState extends PopularMoviesState {
  final MoviePopularModel moviePopular;

  const LoadedPopularMoviesState(this.moviePopular);
  
  @override
  List<Object> get props => [moviePopular];
}
