import 'dart:collection';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_login2/screenmycart/item_model.dart';

class CartProvider extends ChangeNotifier {
  final List<Item> catalog = [];

  UnmodifiableListView get cartItems => UnmodifiableListView(catalog);
  UnmodifiableListView get wishItems => UnmodifiableListView(catalog);

  double get price => catalog.fold<double>(
      0.0, (previousValue, element) => previousValue += element.price);


  // Add Item
  void addItem(Item item) {
    catalog.add(item);
    notifyListeners();
    log("Item Added");
  }

 void addToWishlist(Item item) {
    catalog.add(item);
    notifyListeners();
  }
  

  // Reset Cart
  void reset() {
    catalog.clear();
    notifyListeners();
  }
}
