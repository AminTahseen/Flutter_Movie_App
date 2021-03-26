import 'package:flutter/material.dart';
import '../widgets/category_tag_item.dart';
import '../widgets/rating_star.dart';
import '../models/movie.dart';
import '../data/constants.dart';

class MovieItemStack extends StatelessWidget {
  final Movie movie;
  MovieItemStack(@required this.movie);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 600,
          child: ClipRRect(
            child: Image.network(movie.movie_img_url, fit: BoxFit.fill),
          ),
        ),
        Positioned(
          width: mediaQuery.size.width,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.movie_name,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: movie.categories_id
                      .map((id) => CategoryItemTag(id))
                      .toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                StarDisplay(value: movie.movie_rating.toInt()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
