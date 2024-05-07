import 'package:flutter/material.dart';
import 'package:flutter_login2/User/product/productpage2.dart';
import 'package:flutter_login2/User/product/productpage.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/signup/signup.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/login/login.dart';
import 'package:flutter_login2/User/homepagemew/homepagemew.dart';
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
      home: Allproduct2(), // แก้ Allproduct เป็น Allproduct()
    );
  }
}

class Allproduct2 extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/เดรสคล้องคอดอกไม้.jpg',
    'assets/เดรสเจ้าหญิง.jpg',
    'assets/เดรสเชอรี่.jpg',
    'assets/เดรสดอกน้ำเงิน.jpg',
    'assets/เดรสสั้นดอกไม้.jpg',
    'assets/เดรสหมึกชมพู.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
    'assets/10.jpg',
    'assets/11.jpg',
    'assets/12.jpg',
    // เพิ่มเส้นทางรูปภาพอื่น ๆ ตามต้องการ
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
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
                        hintText: 'Search in Product',
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
              height: 40, // Adjust the height of the "Products" section
              child: Text(
                'All Products',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.7, // Adjust aspect ratio for each item
                children: imagePaths.map((imagePath) {
                  return BrandItem(
                    'Hello wednesday!🎀', // ตั้งชื่อสินค้าตามต้องการ
                    imagePath,
                  );
                }).toList(),
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

  BrandItem(this.brandName, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => productPage2(imagePath: imagePath)),
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