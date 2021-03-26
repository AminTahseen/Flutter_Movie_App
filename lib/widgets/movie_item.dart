import 'package:flutter/material.dart';
import '../screens/movie_details_screen.dart';
import '../data/constants.dart';

class MovieItem extends StatelessWidget {
  final String movie_id;
  final String movie_title;
  final double movie_rating;
  final String movie_img_url;

  MovieItem(
    @required this.movie_id,
    @required this.movie_title,
    @required this.movie_rating,
    @required this.movie_img_url,
  );
  void navigateToMovieDetails(BuildContext context) {
    Navigator.pushNamed(context, MovieDetailScreen.routeName,
        arguments: this.movie_id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToMovieDetails(context),
      child: Container(
        decoration: BoxDecoration(
          color: headingColor,
          border: Border.all(),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: ClipRRect(
                    child: Image.network(movie_img_url, fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(color: Colors.black54),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: starRating),
                        Text(
                          movie_rating.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 1.0, bottom: 10.0),
                child: Center(
                  child: Text(
                    movie_title,
                    style: TextStyle(fontSize: 20, color: whiteColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
