import 'package:flutter/cupertino.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel  extends Movie{
  MovieModel({required int id,
    required String title,
    required String backdropPath,
    required List<int> genreIds,
    required String overview,
    required double voteAverage,
    required double releaseDate}) :
        super(id: id, title: title,
          backdropPath: backdropPath,
          genreIds: genreIds,
          overview: overview,
          voteAverage: voteAverage,
          releaseDate: releaseDate);



factory MovieModel.fromJson(Map<String,dynamic> json)=>MovieModel(
    id: json["id"],
    title: json["title"],
    backdropPath: json["backdrop_path"],
    genreIds: List<int>.from(json["genreIds"].map((e) => e)),
    overview: json["overview"],
    voteAverage: json["voteAverage"],
    releaseDate: json["releaseDate"],);

}


