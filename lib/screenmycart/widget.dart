import 'package:flutter/material.dart';
import 'package:flutter_login2/screenmycart/cart_provider.dart';
import 'package:flutter_login2/screenmycart/constants.dart';
import 'package:flutter_login2/screenmycart/item_model.dart';
import 'package:provider/provider.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  final String imagePath; // เพิ่มพารามิเตอร์ imagePath
  final bool isCartItem; // เพิ่มพารามิเตอร์ isCartItem

  const ItemWidget({
    required this.item,
    required this.imagePath,
    Key? key,
    required this.isCartItem, // รับค่า isCartItem จากภายนอก
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context, listen: false);
    return ListTile(
      leading: Image.asset(
        '$imagePath${item.imagePath}', // ใช้ imagePath และ imageName เพื่อกำหนดที่อยู่ของรูปภาพ
        width: 68,
        height: 100,
      ),
      title: Text(item.name),
      subtitle: Text("${item.price} \$"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
            ),
            onPressed: () => provider.addItem(item),
            child: const Text("Add"),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
            ),
            onPressed: () => provider.addToWishlist(item),
            child: const Icon(Icons.favorite, color: Colors.red)
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
