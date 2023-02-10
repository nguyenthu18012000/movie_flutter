import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/cores/constants.dart';
import 'package:movie_flutter/src/blocs/popular_movies_bloc/bloc/popular_movies_bloc.dart';
import 'package:movie_flutter/src/ui/home/views/banner_home/banner_home.dart';
import 'package:movie_flutter/src/ui/home/views/list_films/list_film.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        clipBehavior: Clip.none,
        children: [
            Stack(
              children: [
                const BannerHome(),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Image(
                        height: 30,
                        image: AssetImage("lib/assets/images/movie_logo.png"),
                      ),
                      Expanded(child: Text('')),
                      Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.white,
                      ),
                      Icon(
                        Constants.bell,
                        size: 35,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ]
            ),
            ListFilm(title: "Top 10 Movies this week", listFirm: state.moviePopular.results),
            ListFilm(title: "New Releases", listFirm: state.moviePopular.results),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        onTap: (int? value) {},
      ),

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



