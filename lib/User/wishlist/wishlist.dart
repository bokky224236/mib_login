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
import 'package:flutter_login2/screenmycart/constants.dart';
import 'package:flutter_login2/screenmycart/widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login2/screenmycart/cart_provider.dart';
import 'package:flutter_login2/screenmycart/catalog_screen.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';


class wishlist extends StatelessWidget {
  final String imagePath;

  const wishlist({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Consumer<CartProvider>(
        builder: (context, provider, child) => Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: provider.cartItems.length,
                itemBuilder: (context, index) {
                  // Access the current item in the cart
                  final cartItem = provider.cartItems[index];

                  // Return an ItemWidget for each cart item
                  return ItemWidget(
                    item: cartItem,
                    imagePath: imagePath,
                    isCartItem: true,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call reset method to clear the cart
                Provider.of<CartProvider>(context, listen: false).reset();
              },
              child: const Text("Clear"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}