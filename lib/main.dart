import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/src/blocs/detail_movie_bloc/detail_movie_bloc.dart';
import 'package:movie_flutter/src/blocs/popular_movies_bloc/bloc/popular_movies_bloc.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/ui/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void initState() async {
    await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
            (context) => PopularMoviesBloc()..add(
              LoadedPopularMoviesEvent(MoviePopularModel())
            )
        ),
        BlocProvider(
          create:
            (context) => DetailMovieBloc()..add(
              const LoadedDetailMovieEvent(idMovie: 238)
            )
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Login(),
      ),
    );
  }
}
