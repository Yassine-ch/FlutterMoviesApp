import 'package:movies_app/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

import '../../data/datasource/movie_remote_data_source.dart';

abstract class BaseMoviesRepository{

Future <List<Movie>> getNowPlayingMovies();
Future <List<Movie>> getPopularMovies();
Future <List<Movie>> getTopRatedMovies();


}