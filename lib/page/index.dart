import 'package:flutter/material.dart';
import 'package:foody/config/const.dart';
import 'package:foody/page/favourite/favourite_body.dart';
import 'package:foody/page/home/widget/category.dart';
import 'package:foody/page/seen/seen_body.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    CategoryPage(),
    FavouriteBody(),
    SeenBody(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dColorMain,
        centerTitle: true,
        title: const Text('Foody'),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_rounded),
            label: 'Seen',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[100],
        onTap: _onItemTapped,
        backgroundColor: dColorMain,
      ),
    );
  }
}
