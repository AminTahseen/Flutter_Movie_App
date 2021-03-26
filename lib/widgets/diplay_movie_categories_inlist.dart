import 'package:flutter/material.dart';
import '../screens/category_movies_screen.dart';
import '../data/dummy_data.dart';

class MovieCategoriesList extends StatelessWidget {
  void navigateToMovies(BuildContext context, categoryId) {
    Navigator.of(context)
        .pushNamed(CategoryMoviesScreen.routeName, arguments: categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        primary: false,
        children: DUMMY_MOVIES_CATEGORIES.map((obj) {
          return Column(
            children: <Widget>[
              InkWell(
                onTap: () => navigateToMovies(context, obj.category_id),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      obj.category_img_url,
                    ),
                  ),
                  title: Text(
                    obj.category_name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('Click to view category movies'),
                ),
              ),
              Divider(),
            ],
          );
        }).toList());
  }
}
