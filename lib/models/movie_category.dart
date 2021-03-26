import 'package:flutter/foundation.dart';

class MovieCategory {
  final String category_id;
  final String category_name;
  final String category_img_url;

  const MovieCategory({
    @required this.category_id,
    @required this.category_name,
    @required this.category_img_url,
  });
}
