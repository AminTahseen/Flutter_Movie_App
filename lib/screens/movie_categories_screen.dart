import 'package:flutter/material.dart';
import './searched_movies_screen.dart';
import '../widgets/diplay_movie_categories_inlist.dart';
import '../widgets/display_movie_categories.dart';
import '../data/constants.dart';

class MoviesCategories extends StatefulWidget {
  @override
  _MoviesCategoriesState createState() => _MoviesCategoriesState();
}

class _MoviesCategoriesState extends State<MoviesCategories> {
  final _searchBarController = TextEditingController();
  void _searchMovies(BuildContext context) {
    final searchedTerm = _searchBarController.text;
    Navigator.of(context)
        .pushNamed(SearchedMovies.routeName, arguments: searchedTerm);
  }

  Widget _builderSearchBox(MediaQueryData mediaQuery, double width) {
    print(width);
    return SizedBox(
      width: mediaQuery.size.width * width,
      child: TextField(
        controller: _searchBarController,
        decoration: InputDecoration(
            hintText: 'Search For Movies',
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.grey[300]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: appTheme),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  if (isLandscape) _builderSearchBox(mediaQuery, 0.90),
                  if (!isLandscape)
                    mediaQuery.size.width > 600
                        ? _builderSearchBox(mediaQuery, 0.90)
                        : _builderSearchBox(mediaQuery, 0.85),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    color: searchBtnColor,
                    child: IconButton(
                      onPressed: () => _searchMovies(context),
                      icon: Icon(Icons.search, color: whiteColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Browse Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Browse movies in a certain category.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Container(
              height: 600,
              child: mediaQuery.size.width > 500
                  ? MoviesCategoryGrid()
                  : MovieCategoriesList(),
            ),
          ],
        ),
      ),
    );
  }
}
