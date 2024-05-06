import 'package:flutter/material.dart';
import 'package:flutter_login2/User/wishlist/wishlist.dart';
import 'package:flutter_login2/screenmycart/cart_screen.dart';
import 'package:flutter_login2/screenmycart/constants.dart';
import 'package:flutter_login2/screenmycart/item_model.dart';
import 'package:flutter_login2/screenmycart/items_list.dart';
import 'package:flutter_login2/screenmycart/widget.dart';
import 'package:flutter_login2/User/product/productpage.dart';

class CatalogScreen extends StatelessWidget {
  final String imagePath;

  const CatalogScreen({required this.imagePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Catalog"),
        centerTitle: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end, 
            children: [
               IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => wishlist(imagePath: 'assets/'),
                    ),
                  );
                },
              ),
              SizedBox(width: 0),
               IconButton(
                icon: Icon(Icons.shopping_cart),
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
    );
  }
}
