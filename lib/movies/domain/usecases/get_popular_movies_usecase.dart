import 'package:dartz/dartz.dart';
import 'package:movies_app/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUsecase{
  final BaseMoviesRepository baseMoviesRepository;
  GetPopularMoviesUsecase(this.baseMoviesRepository);
  Future<Either<Failure,List<Movie>>>execute() async{
    return await baseMoviesRepository.getPopularMovies();
  }

  }
