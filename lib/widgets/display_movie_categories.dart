import 'package:flutter/material.dart';
import '../widgets/movie_category_item.dart';
import '../data/dummy_data.dart';

class MoviesCategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      primary: false,
      padding: const EdgeInsets.all(25),
      children: DUMMY_MOVIES_CATEGORIES.map((obj) {
        return MovieCategoryItem(
          obj.category_id,
          obj.category_name,
          obj.category_img_url,
        );
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
