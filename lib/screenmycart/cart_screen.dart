import 'package:flutter/material.dart';
import 'package:flutter_login2/User/payment/payment2.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login2/screenmycart/cart_provider.dart';
import 'package:flutter_login2/screenmycart/constants.dart';
import 'package:flutter_login2/screenmycart/widget.dart';

class CartScreen extends StatelessWidget {
  final String imagePath;

  const CartScreen({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => payment2()),
                );
              },
              child: Text("Buy \$${provider.price}"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
