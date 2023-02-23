import 'package:flutter/material.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/ui/film_item/film_item.dart';
import 'package:movie_flutter/src/ui/home/home.dart';

class ListFilm extends StatelessWidget {
  final bool isHasAppbar;
  final List<Results>? listFilm;
  const ListFilm({super.key,required this.isHasAppbar, this.listFilm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            isHasAppbar
            ? SizedBox(
              height: 60,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Home()
                          )
                        );
                      },
                      icon: const Icon(Icons.arrow_back)
                  ),
                  const Expanded(
                    child: Text(
                      "Top 10 Movies This Week",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search)
                  )
                ],
              ),
            )
            : const Text(""),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.65
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: listFilm!.map((film) => FilmItem(
                    film: film,
                  )).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
