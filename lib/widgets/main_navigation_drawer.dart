import 'package:flutter/material.dart';
import 'package:movies_app/screens/about_screen.dart';
import '../data/constants.dart';

class NavigationDrawer extends StatelessWidget {
  Widget _buildListTile(IconData icon, String title, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: appTheme),
            padding: const EdgeInsets.only(top: 60, bottom: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
                ),
              ),
              title: Text(
                'Alex Russo',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: whiteColor),
              ),
              subtitle: Text(
                'alex.russo@gmail.com',
                style: TextStyle(color: whiteColor),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildListTile(
            Icons.category,
            'Movie Categories',
            () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          _buildListTile(
            Icons.settings,
            'About App',
            () => Navigator.of(context)
                .pushReplacementNamed(AboutAppScreen.routeName),
          ),
        ],
      ),
    );
  }
}
