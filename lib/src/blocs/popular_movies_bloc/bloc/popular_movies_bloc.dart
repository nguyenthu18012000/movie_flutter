
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/resources/repositories.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc() : super(LoadingPopularMoviesState()) {
    on<LoadedPopularMoviesEvent>(_onLoadPopularMoviesEvent);
  }

  void _onLoadPopularMoviesEvent(LoadedPopularMoviesEvent event, Emitter<PopularMoviesState> emit) async {
    MoviePopularModel s = await Repositories().getPopularMovies();
    emit(
      LoadedPopularMoviesState(s)
    );
  }
}
