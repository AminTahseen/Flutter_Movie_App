import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../widgets/movie_details_item_stack.dart';
import '../widgets/movie_star_item.dart';
import '../data/dummy_data.dart';
import '../data/constants.dart';

class MovieDetailScreen extends StatelessWidget {
  static const routeName = '/movie-details';
  final Function _toggleFavorite;
  final Function _isFavorite;

  MovieDetailScreen(@required this._isFavorite, @required this._toggleFavorite);

  Widget _synopsisWidget(String desc) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade200),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Synopsis',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: headingColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _actorsWidget(Movie movie) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Starring',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: headingColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: movie.starring
                  .map(
                    (obj) => MovieStarItem(obj.starName, obj.starImgUrl),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: appTheme,
      title: Container(
        height: 40,
        width: 70,
        child: Image.network(
          'https://m.media-amazon.com/images/G/01/IMDb/BG_rectangle._CB1509060989_SY230_SX307_AL_.png',
          fit: BoxFit.cover,
        ),
      ),
      actions: <Widget>[
        Container(
          height: 30,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Text('Alex Russo', style: TextStyle(fontSize: 20)),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final movieId = routeArgs;
    final movie =
        DUMMY_MOVIES.where((element) => element.movie_id == movieId).single;
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MovieItemStack(movie),
            SizedBox(
              height: 10,
            ),
            _synopsisWidget(movie.movie_description),
            _actorsWidget(movie),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: favoriteBtnColor,
                border: Border.all(
                  width: 10,
                  color: favoriteBtnColor,
                ),
              ),
              child: ElevatedButton.icon(
                icon: Icon(
                  _isFavorite(movie.movie_id)
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(favoriteBtnColor),
                ),
                onPressed: () => _toggleFavorite(movie.movie_id),
                label: Text(
                  _isFavorite(movie.movie_id) ? 'Unfavourite' : 'Favourite',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: reviewBtnColor,
                border: Border.all(
                  width: 10,
                  color: reviewBtnColor,
                ),
              ),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.comment,
                  color: textColor,
                ),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(reviewBtnColor),
                ),
                onPressed: () {},
                label: Text(
                  'Reviews',
                  style: TextStyle(fontSize: 20, color: textColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
