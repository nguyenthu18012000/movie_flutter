import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/src/blocs/popular_movies_bloc/bloc/popular_movies_bloc.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/resources/movies_popular_api.dart';
import 'package:movie_flutter/src/ui/login/login_form.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  getMovie() async {
    dynamic aaa = MoviePopularApi();
    MoviePopularModel s = await aaa.getPopularMovie();
    print(s.page);
  }

  @override
  Widget build(BuildContext context) {
    // getMovie();
    return Scaffold(
      body: BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
        builder: (context, state) {
          if (state is LoadingPopularMoviesState) {
            return Center(
              child: Column(
                children: [
                  const CircularProgressIndicator(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("klasjdhfkajsdhfkjahsd")
                  ),
                ],
              )
            );
          }
          if (state is LoadedPopularMoviesState) {
            return SafeArea(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginForm()));
                },
                child: Text("${state.moviePopular.page}")),
            );
          } else {
            return const Center(
              child: Text("something wrong"),
            );
          }
        },
      ),
    );
  }
}
