import 'package:flutter/material.dart';
import 'package:movie_flutter/cores/constants.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/ui/detail_movie/detail_movie.dart';

class FilmItem extends StatelessWidget {
  final Results film;
  const FilmItem({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DetailMovie(
                      idMovie: film.id ?? 0,
                    )));
      },
      child: FittedBox(
        fit: BoxFit.fill,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Image.network(
                "${Constants.imageUrl}/${film.posterPath}",
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              width: 100,
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.red),
                color: Colors.red,
              ),
              child: Text(
                "${film.voteAverage}",
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
