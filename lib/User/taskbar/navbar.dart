import 'package:flutter/material.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/homepage/homepage.dart';

/// Flutter code sample for [NavigationBar].

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> widgetOptions = [
    HomePagemew( imagePath: 'assets/'),
    store(),
    wishlist(imagePath: 'assets/'), // Assuming Wishlist is a StatefulWidget
    SettingPage(imagePath: 'assets/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        selectedLabelStyle:
            TextStyle(color: Colors.black), // Set selected label color to black
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 252, 129, 170),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
              color: Colors.black,
            ),
            label: 'Store',
            backgroundColor: Color.fromARGB(255, 252, 129, 170),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            label: 'Wishlist',
            backgroundColor:Color.fromARGB(255, 252, 129, 170),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
            backgroundColor:Color.fromARGB(255, 252, 129, 170),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
//dsdokoefaskasfpsad