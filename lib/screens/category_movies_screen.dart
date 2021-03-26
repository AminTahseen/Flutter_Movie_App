import 'package:flutter/material.dart';
import '../widgets/display_movies_inlist.dart';
import '../widgets/display_movies_grid.dart';
import '../data/constants.dart';

class CategoryMoviesScreen extends StatelessWidget {
  static const routeName = '/category-movies';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final category_id = routeArgs;
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Browse Movies',
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
                  ? MoviesGrid(category_id)
                  : MoviesInList(categoryId: category_id),
            ),
          ],
        ),
      ),
    );
  }
}
