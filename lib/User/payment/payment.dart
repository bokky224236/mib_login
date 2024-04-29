import 'package:flutter/material.dart';
import 'package:flutter_login2/User/payment/payment.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/signup/signup.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/login/login.dart';
import 'package:flutter_login2/User/homepagemew/homepagemew.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';

void main() {
  runApp(Payment());
}

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Container(
        color: Colors.white, // ตั้งค่าพื้นหลังเป็นสีขาว
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Container(
              height: MediaQuery.of(context).size.height *
                  0.5, // ปรับความสูงของ Container
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // กำหนดเส้นขอบ
                borderRadius: BorderRadius.circular(20), // กำหนดขอบเขตรูปร่าง
                image: DecorationImage(
                  image: AssetImage('assets/scan this.png'), // ใส่รูปภาพ
                  fit: BoxFit.cover, // ปรับขนาดรูปภาพให้พอดีกับกรอบ
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
