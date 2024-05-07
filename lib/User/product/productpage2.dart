import 'package:flutter/material.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/signup/signup.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/login/login.dart';
import 'package:flutter_login2/User/homepagemew/homepagemew.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_login2/screenmycart/catalog_screen2.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login2/screenmycart/cart_provider.dart';
import 'package:flutter_login2/screenmycart/catalog_screen.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';
import 'package:flutter_login2/User/deleteaccount/deleteaccount.dart';
import 'package:flutter_login2/User/product/productpage.dart';

import 'package:flutter_login2/screenmycart/cart_provider.dart';
import 'package:flutter_login2/screenmycart/widget.dart';
import 'package:provider/provider.dart';

class productPage2 extends StatelessWidget {
  final String imagePath;

  const productPage2({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 0),
              Container(
                width: 350,
                height: 400, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Hello wednesday!🎀',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\$56',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40), // ปรับความกว้างของกรอบปุ่ม
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CatalogScreen2(imagePath: 'assets/')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300], // กำหนดสีพื้นหลังของปุ่ม
                    shape: RoundedRectangleBorder( // กำหนดรูปร่างของปุ่ม
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: Icon(
                    Icons.list,
                    color: const Color.fromARGB(255, 10, 90, 228), // เปลี่ยนสีไอคอน
                  ),
                  label: Text(
                    'Go to Catalog',
                    style: TextStyle(
                      color: Colors.white, // เปลี่ยนสีข้อความ
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40), // ปรับความกว้างของกรอบปุ่ม
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => wishlist(imagePath: 'assets/')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[200], // กำหนดสีพื้นหลังของปุ่ม
                    shape: RoundedRectangleBorder( // กำหนดรูปร่างของปุ่ม
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 241, 16, 0), // เปลี่ยนสีไอคอน
                  ),
                  label: Text(
                    'Go to Wishlist',
                    style: TextStyle(
                      color: Colors.white, // เปลี่ยนสีข้อความ
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
