import 'package:flutter/material.dart';
import '../widgets/no_favourite.dart';
import '../screens/movie_details_screen.dart';
import '../models/movie.dart';
import '../data/constants.dart';

class FavoriteMoviesScreen extends StatelessWidget {
  final List<Movie> favoriteMovies;

  FavoriteMoviesScreen(@required this.favoriteMovies);

  void navigateToMovieDetails(BuildContext context, String movieId) {
    Navigator.pushNamed(context, MovieDetailScreen.routeName,
        arguments: movieId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: favoriteMovies.length > 0
          ? ListView(
              primary: false,
              children: favoriteMovies.map((obj) {
                return InkWell(
                  onTap: () => navigateToMovieDetails(context, obj.movie_id),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            obj.movie_img_url,
                          ),
                        ),
                        title: Text(
                          obj.movie_name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Currently scoring at ${obj.movie_rating.toString()} rating.',
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                );
              }).toList(),
            )
          : NoFavourties(),
    );
  }
}
