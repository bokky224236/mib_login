import 'package:flutter/material.dart';
import 'package:flutter_login2/User/payment/payment.dart';
import 'package:flutter_login2/User/setting/setting.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/User/signup/signup.dart';
import 'package:flutter_login2/User/taskbar/navbar.dart';
import 'package:flutter_login2/User/store/store.dart';
import 'package:flutter_login2/User/login/login.dart';
import 'package:flutter_login2/User/homepagemew/homepagemew.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login2/screenmycart/cart_provider.dart';
import 'package:flutter_login2/screenmycart/catalog_screen.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => CartProvider()), // Provide CartProvider
      ],
      child: MaterialApp(
        title: 'Your App Title',
        initialRoute: '/', // Set initial route to login
        routes: {
          '/': (context) => LoginApp(),
          '/wishlist': (context) => wishlist(
                imagePath: 'assets/',
              ),
          '/HomePage': (context) => HomePage(), //navbar
          '/SettingPage': (context) => SettingPage(),
          '/MyCartPage': (context) => CartScreen(imagePath: 'assets/'),
          '/HomePagemew': (context) => HomePagemew(
                imagePath: 'assets/',
              ),
          '/Payment': (context) => Payment(),
          '/store': (context) => store(),
        },
      ),
    );
  }
}
