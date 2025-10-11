import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigation()
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();
  
  @override
  _HomeViewState createState() => _HomeViewState();
}

// ConsumerState has reference to ref
class _HomeViewState extends ConsumerState<_HomeView> {

  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch( nowPlayingMoviesProvider );
    final slideShowMovies = ref.watch( movieSlideshowProvider );
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
            titlePadding: EdgeInsets.zero,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(
                children: [
                  MoviesSlideshow(movies: slideShowMovies),
                  MovieHorizontalListview(
                    movies: nowPlayingMovies,
                    title: 'In theaters',
                    subtitle: 'Monday 20',
                    loadNextPage: (){
                      ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                    },
                  ),
                  MovieHorizontalListview(
                    movies: nowPlayingMovies,
                    title: 'Soon',
                    subtitle: 'This month',
                    loadNextPage: (){
                      ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                    },
                  ),
                  MovieHorizontalListview(
                    movies: nowPlayingMovies,
                    title: 'Populars',
                    subtitle: 'Most viewers',
                    loadNextPage: (){
                      ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                    },
                  ),
                  MovieHorizontalListview(
                    movies: nowPlayingMovies,
                    title: 'Top rated',
                    subtitle: 'Of all time',
                    loadNextPage: (){
                      ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
                    },
                  ),
                  const SizedBox(height: 50)
                ]
              );
            },
            childCount: 1
          )
        )
      ]
    );
  }
}