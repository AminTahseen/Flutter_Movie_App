import 'package:flutter/material.dart';
import '../widgets/no_movies.dart';
import '../widgets/movie_item.dart';
import '../data/dummy_data.dart';

class MoviesGrid extends StatelessWidget {
  final String category_id;

  MoviesGrid(@required this.category_id);

  @override
  Widget build(BuildContext context) {
    final MoviesList = DUMMY_MOVIES
        .where((element) => element.categories_id.contains(category_id))
        .toList();
    return MoviesList.length > 0
        ? GridView(
            primary: false,
            padding: const EdgeInsets.all(25),
            children: MoviesList.map((obj) {
              return MovieItem(
                obj.movie_id,
                obj.movie_name,
                obj.movie_rating,
                obj.movie_img_url,
              );
            }).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          )
        : NoMovies();
  }
}
