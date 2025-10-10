import 'package:cinemapedia/domain/entities/movie.dart';

// Abstract class representing a repository for movie data.
// This serves as a contract for implementing different movie
// repositories, allowing for flexibility in data handling
// and separation of concerns.

abstract class MoviesRepository{
  // getNowPlaying method fetches a list of movies currently
  // playing, supporing pagination with an optional page parameter.
   Future<List<Movie>>getNowPlaying({int page = 1});
}