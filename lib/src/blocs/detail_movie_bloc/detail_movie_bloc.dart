import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/src/models/detail_movie_model/detail_movie_model.dart';
import 'package:movie_flutter/src/resources/repositories.dart';

part 'detail_movie_state.dart';
part 'detail_movie_event.dart';

class DetailMovieBloc extends Bloc<DetailMovieEvent, DetailMovieState> {
  DetailMovieBloc(): super(LoadingDetailMovieState()) {
    on<LoadedDetailMovieEvent>(_onLoadedDetailMovieEvent);
  }

  void _onLoadedDetailMovieEvent(
      LoadedDetailMovieEvent event,
      Emitter<DetailMovieState> emit
  ) async {
    DetailMovieModel detailMovie = await Repositories().getDetailMovie(event.idMovie);
    emit(
        LoadedDetailMovieState(detailMovie)
    );
  }
}