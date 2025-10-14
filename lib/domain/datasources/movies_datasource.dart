import 'package:cinemapedia/domain/entities/movie.dart';

// Abstract class for data sources that provides a contract for
// implementing different data sources. This allows developers
// to create multiple datasources while ensuring a consistent
// interface for accessing movie data
abstract class MoviesDatasource{
  // getNowPlaying will fetch a list of currently playing movies,
  // with an optional pagination feature
   Future<List<Movie>>getNowPlaying({int page = 1});
   Future<List<Movie>>getPopular({int page = 1});
   Future<List<Movie>>getUpComing({int page = 1});
   Future<List<Movie>>getTopRated({int page = 1});
   Future<Movie> getMovieById(String id);
}