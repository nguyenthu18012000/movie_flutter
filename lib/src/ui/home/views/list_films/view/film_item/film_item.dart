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
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.network("${Constants.imageUrl}/${film.posterPath}"),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.red),
            color: Colors.red,
          ),
          child: Text(
            "${film.voteAverage}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12
            ),
          ),
        )
      ],
    );
  }
}
