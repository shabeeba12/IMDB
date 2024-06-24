import 'dart:convert';
import 'package:http/http.dart';
import '../../ui/home.dart';
import '../model_class/imdb_model.dart';
import 'api_client.dart';

class IMDbApi{

  ApiClient apiClient=ApiClient();

  Future<MovieModel>getIMDb() async{
    String trendingpath ='https://imdb-top-100-movies.p.rapidapi.com/top32';
    var body={};


    Response response= await apiClient.invokeAPI(trendingpath, 'GET', body);
    return MovieModel.fromJson(jsonDecode(response.body));
  }



}