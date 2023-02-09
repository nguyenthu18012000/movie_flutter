import 'package:flutter/material.dart';
import 'package:movie_flutter/cores/constants.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';

class FilmItem extends StatelessWidget {
  final Results film;
  const FilmItem({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: NetworkImage("${Constants.imageUrl}/${film.posterPath}"),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter,
        ),
        Text(
          "${film.voteAverage}",
          style: const TextStyle(
            color: Colors.white,
            backgroundColor: Colors.red,
          ),
        )
      ],
    );
  }
}
