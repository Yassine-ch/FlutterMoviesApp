import 'package:dio/dio.dart';
import 'package:movies_app/error/exceptions.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';
import 'package:movies_app/network/erroe_message_model.dart';

class MovieRemoteDataSource {
   Future<List<MovieModel>>getNowPlayingMovies()async{
final response=await Dio().get("https://api.themoviedb.org/3/movie/{movie_id}?api_key=9b256c94aad1c720ccadcbc6158a09d7");
if(response.statusCode==200){
  return List<MovieModel>.from((response.data["results"]as List).map((e) => MovieModel.fromJson(e)));
}else
  {
  throw ServerException (
    errorMessageModel: ErrorMessageModel.fromJson(response.data),
  );
  }
}
}