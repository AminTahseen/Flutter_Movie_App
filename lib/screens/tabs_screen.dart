import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';
import '../widgets/main_navigation_drawer.dart';
import '../screens/movie_categories_screen.dart';
import '../screens/movie_favorites_screen.dart';
import '../data/constants.dart';

class TabsScreen extends StatefulWidget {
  final List<Movie> _favouriteMovies;

  TabsScreen(@required this._favouriteMovies);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': MoviesCategories()},
      {'page': FavoriteMoviesScreen(widget._favouriteMovies)},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
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
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: appTheme,
        unselectedItemColor: bottomNavItemUnSelected,
        selectedItemColor: whiteColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favourites'),
          ),
        ],
      ),
    );
  }
}
