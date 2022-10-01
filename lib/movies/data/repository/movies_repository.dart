import 'package:dartz/dartz.dart';
import 'package:movies_app/error/exceptions.dart';
import 'package:movies_app/error/failure.dart';
import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class MoviesRopository  extends BaseMoviesRepository{
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRopository(this.baseMovieRemoteDataSource);
  @override
  Future<Either<List<Movie>,Failure>> getNowPlayingMovies() async {

  final result = await baseMovieRemoteDataSource.getNowPlayingMovies();

  }


  @override
  Future<List<Movie>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }



}