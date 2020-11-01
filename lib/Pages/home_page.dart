import '../widget/drawer_menu.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class HomePage extends StatefulWidget {
  static String get routeName => '@routes/home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;
  int activePageIndex = 0;
  PageController _pageController;
  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
      activePageIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).accentColor,
        currentIndex: activePageIndex,
        onTap: onPageChanged,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
      body: PageView(
        onPageChanged: onPageChanged,
        controller: _pageController,
        children: [
          Home(),
          Home(),
          Home(),
        ],
      ),
    );
  }
}
