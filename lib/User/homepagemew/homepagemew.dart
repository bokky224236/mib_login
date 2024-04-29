import 'package:flutter/material.dart';
import 'package:flutter_login2/User/payment/payment.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/signup/signup.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/login/login.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';
import 'package:flutter_login2/screenmycart/catalog_screen.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            HomePagemew(imagePath: 'assets/'),
          ],
        ),
      ),
    );
  }
}

class HomePagemew extends StatelessWidget {
  final String imagePath;

  HomePagemew({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 430,
            height: 1900,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFFFC5C5)),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 353,
                  child: Container(
                    width: 430,
                    height: 1600,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 230,
                  top: 704,
                  child: Container(
                    width: 158,
                    height: 198,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 158,
                            height: 198,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFD9D9D9)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 7,
                          top: 7,
                          child: SizedBox(
                            width: 144,
                            height: 131,
                            child: Image.asset("assets/mmn2.png"),
                          ),
                        ),
                        Positioned(
                          left: 13,
                          top: 146,
                          child: Container(
                            width: 138,
                            height: 14,
                            child: Text(
                              '🦖hello wednesday ! 🎀',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 125,
                  child: Container(
                    width: 359,
                    height: 42,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 62,
                  child: SizedBox(
                    width: 114,
                    height: 23,
                    child: Text(
                      'Have a good day',
                      style: TextStyle(
                        color: Color(0xFF3D3B40),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 81,
                  top: 138,
                  child: SizedBox(
                    width: 114,
                    height: 17,
                    child: Text(
                      'Search in Store',
                      style: TextStyle(
                        color: Color(0xCC3D3B40),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 47,
                  top: 132,
                  child: Stack(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 29,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 361,
                  top: 82,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CartScreen(imagePath: 'assets/'),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 82,
                  child: Container(
                    width: 147,
                    height: 23,
                    child: Text(
                      'Ron Weasley',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 643,
                  child: Container(
                    width: 174,
                    height: 23,
                    child: Text(
                      'Popular Products',
                      style: TextStyle(
                        color: Color(0xFF3D3B40),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 195,
                  child: Container(
                    width: 147,
                    height: 23,
                    child: Text(
                      'Category\n',
                      style: TextStyle(
                        color: Color(0xFF3D3B40),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 51,
                  top: 704,
                  child: Container(
                    width: 158,
                    height: 198,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 712,
                  child: SizedBox(
                    width: 144,
                    height: 130,
                    child: Image.asset("assets/mmn.png"),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 847,
                  child: Container(
                    width: 150,
                    height: 17,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 137,
                            height: 17,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFFC5C5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2)),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 0,
                          child: SizedBox(
                            width: 145,
                            height: 14,
                            child: Text(
                              '🦖hello wednesday ! 🎀',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 131,
                  top: 872,
                  child: Container(
                    width: 16,
                    height: 16,
                    child: Stack(children: []),
                  ),
                ),
                Positioned(
                  left: 236,
                  top: 868,
                  child: Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.only(left: 2, bottom: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  ),
                ),
                Positioned(
                  left: 350,
                  top: 867,
                  child: Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 3.31, vertical: 3),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: ShapeDecoration(
                            color: Color(0xFF222222),
                            shape: OvalBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 49,
                  top: 415,
                  child: Container(
                    width: 321,
                    height: 185,
                    child: Image.asset("assets/mmn3.png"),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 56,
                  top: 241,
                  child: Container(
                    width: 62,
                    height: 62,
                    child: Image.asset("assets/mmn4.png"),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 141,
                  top: 243,
                  child: Container(
                    width: 61,
                    height: 60,
                    child: Image.asset("assets/mmn5.png"),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 228,
                  top: 243,
                  child: Container(
                    width: 66,
                    height: 66,
                    child: Image.asset("assets/mmn6.png"),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 321,
                  top: 242,
                  child: Container(
                    width: 67,
                    height: 67,
                    child: Image.asset("assets/mmn7.png"),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 62,
                  top: 308,
                  child: SizedBox(
                    width: 54,
                    height: 23,
                    child: Text(
                      'เสื้อแขนสั้น',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 145,
                  top: 309,
                  child: SizedBox(
                    width: 66,
                    height: 23,
                    child: Text(
                      'กางเกงขาสั้น',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 235,
                  top: 309,
                  child: SizedBox(
                    width: 60,
                    height: 23,
                    child: Text(
                      'เสื้อแขนยาว',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 325,
                  top: 309,
                  child: SizedBox(
                    width: 68,
                    height: 23,
                    child: Text(
                      'กางเกงขายาว',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
