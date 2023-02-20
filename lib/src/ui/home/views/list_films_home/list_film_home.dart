import 'package:flutter/material.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/ui/film_item/film_item.dart';
import 'package:movie_flutter/src/ui/list_film/list_film.dart';

class ListFilmHome extends StatelessWidget {
  final String title;
  final List<Results>? listFilm;
  const ListFilmHome({super.key, required this.title, required this.listFilm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, bottom: 20, right: 10),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Expanded(child: Text("")),
                InkWell(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ListFilm(listFilm: listFilm)
                        )
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.5,
                mainAxisSpacing: 10,
              ),
              scrollDirection: Axis.horizontal,
              children: listFilm!.map((film) => FilmItem(film: film,)).toList(),
            ),
          ),
        ]

      ),
    );
  }
}