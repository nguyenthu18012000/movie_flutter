import 'package:movie_flutter/cores/http.dart';

import '../models/detail_movie_model/detail_movie_model.dart';

class DetailMovieApi {
  Future<DetailMovieModel> getDetailMovie(int idMovie) async {
    String url = "$idMovie";
    var response = await HttpClient().sendGet(url);
    return Future.value(DetailMovieModel.fromJson(response));
  }
}