import 'package:flutter/material.dart';
import 'package:flutter_login2/User/product/allproduct.dart';
import 'package:flutter_login2/User/product/allproduct2.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/signup/signup.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/login/login.dart';
import 'package:flutter_login2/User/homepage/homepage.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login2/screenmycart/cart_provider.dart';
import 'package:flutter_login2/screenmycart/catalog_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: store(),
    );
  }
}

class store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search in Store',
                        hintStyle: TextStyle(fontSize: 18),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              child: Text(
                'Brand',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.7,
                children: [
                  BrandItem(
                    brandName: 'LuxeVogue',
                    imagePath: 'assets/lv.png',
                    destinationPage: Allproduct(),
                  ),
                  BrandItem(
                    brandName: 'EliteStyle',
                    imagePath: 'assets/EliteStyle.png',
                    destinationPage: Allproduct2(),
                  ),
                  BrandItem(
                    brandName: 'Style Spectrum',
                    imagePath: 'assets/EliteStyle (5).png',
                    destinationPage: Allproduct2(),
                  ),
                  BrandItem(
                    brandName: 'Panache',
                    imagePath: 'assets/EliteStyle (2).png',
                    destinationPage: Allproduct2(),
                  ),
                  BrandItem(
                    brandName: 'Sartorial',
                    imagePath: 'assets/EliteStyle (3).png',
                    destinationPage: Allproduct2(),
                  ),
                  BrandItem(
                    brandName: 'Glamour Galore',
                    imagePath: 'assets/EliteStyle (4).png',
                    destinationPage: Allproduct2(),
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

class BrandItem extends StatelessWidget {
  final String brandName;
  final String imagePath;
  final Widget destinationPage;

  const BrandItem({
    required this.brandName,
    required this.imagePath,
    required this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                brandName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}