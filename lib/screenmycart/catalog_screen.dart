import 'package:flutter/material.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/screenmycart/constants.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';
import 'package:flutter_login2/screenmycart/item_model.dart';
import 'package:flutter_login2/screenmycart/items_list.dart';
import 'package:flutter_login2/screenmycart/widget.dart';

class CatalogScreen extends StatelessWidget {
  final String imagePath;

  const CatalogScreen({required this.imagePath, Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Catalog"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(imagePath: 'assets/'),
                ),
              );
            },
            child: Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView.builder(
        itemCount: catalog.length,
        itemBuilder: (context, index) => ItemWidget(
          item: catalog[index],
          imagePath: imagePath,
          isCartItem: true,
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => wishlist(
                    imagePath: 'assets/',
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.favorite, color: Colors.red, size: 50),
            ),
          ),
        ),
      ),
    );
  }
}
