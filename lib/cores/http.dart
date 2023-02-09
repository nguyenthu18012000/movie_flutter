import 'package:http/http.dart' as http;
import 'package:movie_flutter/cores/constants.dart';
class HttpClient {

  String getUrl(String url) {
    return '${Constants.baseUrl}/3/movie/$url?api_key=${Constants.apiKey}&language=en-US';
  }
  sendGet (String url) {
    var part = Uri.parse(getUrl(url));
    return http.get(part);
  }
}