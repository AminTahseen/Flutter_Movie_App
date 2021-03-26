import 'package:flutter/material.dart';

class MovieStarItem extends StatelessWidget {
  final String starName;
  final String starImgUrl;

  MovieStarItem(@required this.starName, @required this.starImgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            width: 90,
            height: 90,
            child: ClipRRect(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  starImgUrl,
                ),
              ),
            ),
          ),
          Text(
            starName,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
