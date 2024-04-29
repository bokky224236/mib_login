import 'package:flutter/material.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/payment/payment.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/homepagemew/homepagemew.dart';

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
    HomePagemew( imagePath: 'assets/',),
    store(),
    wishlist(imagePath: 'assets/',), // Assuming Wishlist is a StatefulWidget
    SettingPage(),
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
              color: Color(0xff3D3B40),
            ),
            label: 'Home',
            backgroundColor: Color(0xffFFF6DC),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store,
              color: Color(0xff3D3B40),
            ),
            label: 'Store',
            backgroundColor: Color(0xffFFF6DC),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xff3D3B40),
            ),
            label: 'Wishlist',
            backgroundColor: Color(0xffFFF6DC),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff3D3B40),
            ),
            label: 'Profile',
            backgroundColor: Color(0xffFFF6DC),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
//dsdokoefaskasfpsad