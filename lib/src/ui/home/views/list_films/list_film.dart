import 'package:flutter/material.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/ui/home/views/list_films/view/film_item/film_item.dart';

class ListFilm extends StatelessWidget {
  final String title;
  List<Results>? listFirm;
  ListFilm({super.key, required this.title, required this.listFirm});

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
                  "$title",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Expanded(child: Text("")),
                InkWell(
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  onTap: () {
                    print(title);
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 240,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.6,
                mainAxisSpacing: 10,
              ),
              scrollDirection: Axis.horizontal,
              children: listFirm!.map((film) => FilmItem(film: film,)).toList()
              // [
              //   FilmItem(),
              //   FilmItem(),
              //   FilmItem(),
              //   FilmItem(),
              //   FilmItem()
              //
              // ],
            ),
          ),
        ]

      ),
    );
  }
}