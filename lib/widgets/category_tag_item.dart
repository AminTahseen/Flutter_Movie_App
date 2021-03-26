import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../data/constants.dart';

class CategoryItemTag extends StatelessWidget {
  final String category_id;

  CategoryItemTag(@required this.category_id);
  @override
  Widget build(BuildContext context) {
    final category = DUMMY_MOVIES_CATEGORIES
        .where((element) => element.category_id == category_id)
        .single;
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(color: whiteColor),
          ),
          child: Text(
            category.category_name,
            style: TextStyle(color: whiteColor, fontSize: 16),
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
