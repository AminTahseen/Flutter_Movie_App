import 'package:flutter/material.dart';
import '../screens/category_movies_screen.dart';
import '../data/constants.dart';

class MovieCategoryItem extends StatelessWidget {
  final String category_id;
  final String category_name;
  final String category_img_url;

  MovieCategoryItem(
    @required this.category_id,
    @required this.category_name,
    @required this.category_img_url,
  );

  void navigateToMovies(BuildContext context) {
    Navigator.of(context)
        .pushNamed(CategoryMoviesScreen.routeName, arguments: category_id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToMovies(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  category_img_url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 20,
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.black54),
                child: Center(
                  child: Text(
                    category_name,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
