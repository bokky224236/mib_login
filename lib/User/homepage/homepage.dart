import 'package:flutter/material.dart';
import 'package:flutter_login2/User/product/allproduct.dart';
import 'package:flutter_login2/User/product/allproduct2.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/signup/signup.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/login/login.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';
import 'package:flutter_login2/screenmycart/catalog_screen.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';


class HomePagemew extends StatelessWidget {
  final String imagePath;

  HomePagemew({required this.imagePath});

   @override
  Widget build(BuildContext context) {
    List<String> imageAssetPaths = [
      'assets/mmn4.png',
      'assets/mmn5.png',
      'assets/mmn6.png',
      'assets/mmn7.png',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 197, 197),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Have a good day',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              'Ron Weasley',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            iconSize: 25, // ปรับความสูงของไอคอนเป็น 28 พิกเซล
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(imagePath: 'assets/'),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView( 
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 255, 197, 197),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 Container(
                      width: 355, 
                      height: 40, 
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          suffixIcon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  SizedBox(height: 20),
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 10.0),
                 Container(
                  alignment: Alignment.center,
                  child: Wrap(
                    spacing: 18,
                    runSpacing: 10,
                    children: List.generate(imageAssetPaths.length, (index) {
                      String categoryText = '';
                      switch (index) {
                        case 0:
                          categoryText = 'เสื้อแขนสั้น';
                          break;
                        case 1:
                          categoryText = 'กางเกงขาสั้น';
                          break;
                        case 2:
                          categoryText = 'เสื้อแขนยาว';
                          break;
                        case 3:
                          categoryText = 'กางเกงขายาว';
                          break;
                        default:
                          categoryText = 'Category $index';
                      }
                      return Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              imageAssetPaths[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5.0), // เพิ่มช่องว่างระหว่างรูปภาพกับข้อความ
                          Text(
                            categoryText, // เพิ่มข้อความที่ต้องการแสดง
                            style: TextStyle(fontSize: 12.0), // ปรับขนาดตัวอักษรตามต้องการ
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/mmn3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    'Popular Products',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Allproduct()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/1a.jpg',
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Hello wednesday!🎀',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Allproduct()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/2a.jpg',
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'Hello wednesday!🎀',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
