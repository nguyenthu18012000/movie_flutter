import 'package:http/http.dart' as http;
import 'package:movie_flutter/cores/constants.dart';
import 'package:movie_flutter/cores/http.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'dart:convert';

class MoviePopularApi {
  Future<MoviePopularModel> getPopularMovie() async {
    // var url = Uri.parse('${Constants.rootUrl}/3/movie/popular?api_key=${Constants.apiKey}');
    // var response = await http.get(url);
    const url = 'popular';
    var response = await HttpClient().sendGet(url);
    // print(MoviePopularModel.fromJson(json.decode(response.body)).results?[0].title);
    return Future.value(MoviePopularModel.fromJson(json.decode(response.body)));
  }
}