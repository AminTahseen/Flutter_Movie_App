import 'package:flutter/material.dart';

class NoFavourties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
              'https://img.icons8.com/carbon-copy/2x/likes-folder.png'),
          SizedBox(
            height: 20,
          ),
          Text(
            'No Favourites Yet',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Oops, it looks like you don\'t have any favourites yet.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
