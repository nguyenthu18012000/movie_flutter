import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/src/blocs/popular_movies_bloc/bloc/popular_movies_bloc.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/resources/movies_popular_api.dart';
import 'package:movie_flutter/src/resources/repositories.dart';
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
                    child: const Text("loading")
                  ),
                ],
              )
            );
          }
          if (state is LoadedPopularMoviesState) {
            return HomeScreen(state: state);
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

class HomeScreen extends StatelessWidget {
  final LoadedPopularMoviesState state;
  const HomeScreen({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            Text('ádfasdfasd'),
            SizedBox(
              height: 150,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                  mainAxisSpacing: 2,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text('a;lskd'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('a;lskd'),
                  ),
                  Container(
                    color: Colors.red,
                    child: Text('a;lskd'),
                  ),
                  Container(
                    color: Colors.red,
                    child: Text('a;lskd'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('a;lskd'),
                  ),
                  Container(
                    color: Colors.red,
                    child: Text('a;lskd'),
                  )
                ],
              ),
            ),
          ],
        )
    );
    // return SafeArea(
    //   child: InkWell(
    //       onTap: () {
    //         Navigator.push(context,
    //             MaterialPageRoute(builder: (_) => const LoginForm()));
    //       },
    //       child: Text("${state.moviePopular.totalPages}")),
    // );
  }
}
