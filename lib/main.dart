import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/src/blocs/popular_movies_bloc/bloc/popular_movies_bloc.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/ui/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (
            (context) => PopularMoviesBloc()..add(LoadedPopularMoviesEvent(MoviePopularModel()))
          )
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Login(),
      ),
    );
  }
}
