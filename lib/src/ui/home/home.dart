import 'package:flutter/material.dart';
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
    getMovie();
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginForm())
            );
          },
          child: const Text('back')
        ),
      ),
    );
  }
}