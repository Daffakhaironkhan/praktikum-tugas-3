import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.of(context).pushNamed('/about');
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('token');
                Navigator.of(context).pushNamed('/login');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Selamat datang di halaman utama aplikasi!'),
      ),
    );
  }
}
