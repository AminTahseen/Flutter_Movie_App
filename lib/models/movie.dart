import 'package:flutter/foundation.dart';
import 'package:movies_app/models/movie_star.dart';

class Movie {
  final String movie_id;
  final String movie_name;
  final String movie_description;
  final String movie_img_url;
  final double movie_rating;
  final List<String> categories_id;
  final List<MovieStar> starring;

  const Movie({
    @required this.movie_id,
    @required this.movie_name,
    @required this.movie_description,
    @required this.movie_img_url,
    @required this.movie_rating,
    @required this.categories_id,
    @required this.starring,
  });
}
