import 'package:flutter/material.dart';
import 'package:movies_app/screens/about_screen.dart';
import 'package:movies_app/screens/searched_movies_screen.dart';
import './data/dummy_data.dart';
import './models/movie.dart';
import './screens/tabs_screen.dart';
import './screens/movie_details_screen.dart';
import './screens/category_movies_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Movie> _availableMovies = DUMMY_MOVIES;
  List<Movie> favoriteMovies = [];

  void _toggleFavorite(String movieId) {
    final existingIndex =
        favoriteMovies.indexWhere((element) => element.movie_id == movieId);
    if (existingIndex >= 0) {
      setState(() {
        favoriteMovies.removeAt(existingIndex);
      });
    } else {
      setState(() {
        favoriteMovies.add(
            DUMMY_MOVIES.firstWhere((element) => element.movie_id == movieId));
      });
    }
  }

  bool _isFavorite(String movieId) {
    return favoriteMovies.any((element) => element.movie_id == movieId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => TabsScreen(favoriteMovies),
        CategoryMoviesScreen.routeName: (ctx) => CategoryMoviesScreen(),
        MovieDetailScreen.routeName: (ctx) =>
            MovieDetailScreen(_isFavorite, _toggleFavorite),
        SearchedMovies.routeName: (ctx) =>
            SearchedMovies(this._availableMovies),
        AboutAppScreen.routeName: (ctx) => AboutAppScreen()
      },
    );
  }
}
