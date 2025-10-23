/*
{
  1: Movie,
  2: Movie,
  3: Movie,
  4: Movie
}
*/

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../domain/repositories/local_storage_reporitory.dart';

final favoriteMoviesProvider = StateNotifierProvider((ref){
  return ;
});

class StorageMoviesNotifier extends StateNotifier<Map<int, Movie>> {
  
  int page = 0;
  final LocalStorageRepository localStorageRepository;

  StorageMoviesNotifier({required this.localStorageRepository}):super({});
}