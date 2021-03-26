import 'package:flutter/material.dart';
import 'package:movies_app/widgets/no_movies.dart';
import '../data/constants.dart';
import '../screens/movie_details_screen.dart';
import '../models/movie.dart';

class SearchedMoviesList extends StatelessWidget {
  final List<Movie> searchedList;
  SearchedMoviesList(this.searchedList);

  void navigateToMovieDetails(BuildContext context, String movieId) {
    Navigator.pushNamed(context, MovieDetailScreen.routeName,
        arguments: movieId);
  }

  @override
  Widget build(BuildContext context) {
    return searchedList.length > 0
        ? ListView(
            primary: false,
            children: searchedList.map((obj) {
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
        : NoMovies();
  }
}
