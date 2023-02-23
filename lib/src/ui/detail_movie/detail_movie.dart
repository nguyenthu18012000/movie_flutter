import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_flutter/cores/constants.dart';
import 'package:movie_flutter/src/blocs/detail_movie_bloc/detail_movie_bloc.dart';
import 'package:movie_flutter/src/models/detail_movie_model/detail_movie_model.dart';
import 'package:readmore/readmore.dart';

class DetailMovie extends StatelessWidget {
  final int idMovie;
  const DetailMovie({super.key, required this.idMovie});

  @override
  Widget build(BuildContext context) {
    context
        .read<DetailMovieBloc>()
        .add(LoadedDetailMovieEvent(idMovie: idMovie));
    return Scaffold(
      body: BlocConsumer<DetailMovieBloc, DetailMovieState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingDetailMovieState) {
            return const Text("loading");
          }
          if (state is LoadedDetailMovieState) {
            return _DetailMovie(filmInfo: state.detailMovie);
          }
          return const Text("Wrong");
        },
      ),
    );
  }
}

class _DetailMovie extends StatelessWidget {
  final DetailMovieModel filmInfo;
  const _DetailMovie({super.key, required this.filmInfo});

  String getListGenre () {
    String genres = "Genre:";
    filmInfo.genres?.forEach((element) {
      genres += " ${element.name!},";
    });
    genres += "...";
    return genres;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                  "${Constants.imageUrl}/${filmInfo.belongs_to_collection?.backdrop_path}",
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.cast_rounded,
                          color: Colors.white,
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${filmInfo.title}",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            overflow: TextOverflow.fade
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.tag,
                        )
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.mobile_screen_share_sharp,
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.star_half_rounded,
                        color: Colors.red,
                      ),
                      Text(
                        "${filmInfo.vote_average?.toStringAsFixed(1)}",
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 16
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.red,
                        size: 17,
                      ),
                      const Text(
                        "2022",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "13+",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "United States",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      const Text("    "),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 45),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 2, color: Colors.red),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(
                                  Icons.play_circle,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 25),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0),
                              border: Border.all(width: 2, color: Colors.red),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Icon(
                                  Icons.file_download_outlined,
                                  color: Colors.red,
                                ),
                                Text(
                                  "  Download",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Text(
                    getListGenre(),
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                ReadMoreText(
                  "${filmInfo.overview}",
                  trimLines: 3,
                  trimCollapsedText: "View more",
                  trimExpandedText: "View less",
                  trimMode: TrimMode.Line,
                  moreStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
                // const TabBarDetail(),
              ],
            ),
          ),
        ],
      )
    );
  }
}


class TabBarDetail extends StatefulWidget {
  const TabBarDetail({super.key});

  @override
  State<TabBarDetail> createState() => _TabBarDetail();
}

class _TabBarDetail extends State<TabBarDetail>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          // controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}