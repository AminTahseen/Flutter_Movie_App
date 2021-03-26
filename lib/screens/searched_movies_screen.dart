import 'package:flutter/material.dart';
import '../widgets/searched_movies_list.dart';
import '../models/movie.dart';
import '../data/constants.dart';

class SearchedMovies extends StatelessWidget {
  final List<Movie> _moviesList;

  SearchedMovies(this._moviesList);

  static const routeName = '/search-movies';
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
    final mediaQuery = MediaQuery.of(context);
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final searchedTerm = routeArgs;
    print('Movies for term $searchedTerm');
    final List<Movie> searchedResults = [];
    for (Movie item in _moviesList) {
      if (item.movie_name.toUpperCase().contains(searchedTerm.toUpperCase())) {
        if (searchedResults.contains(item)) {
          // Don't add item
        } else {
          searchedResults.add(item);
        }
      } else if (item.movie_description
          .toUpperCase()
          .contains(searchedTerm.toUpperCase())) {
        if (searchedResults.contains(item)) {
          // Don't add item
        } else {
          searchedResults.add(item);
        }
      }
    }
    print(searchedResults.toString());
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Showing results for \' $searchedTerm \' ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 600,
              child: SearchedMoviesList(searchedResults),
            ),
          ],
        ),
      ),
    );
  }
}
