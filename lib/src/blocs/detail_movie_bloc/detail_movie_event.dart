part of 'detail_movie_bloc.dart';

abstract class DetailMovieEvent extends Equatable {
  const DetailMovieEvent();

  @override
  List<Object> get props => [];
}

class LoadingDetailMovieEvent extends DetailMovieEvent {}

class LoadedDetailMovieEvent extends DetailMovieEvent {
  final int idMovie;

  const LoadedDetailMovieEvent({required this.idMovie});

  @override
  List<Object> get props => [idMovie];
}
