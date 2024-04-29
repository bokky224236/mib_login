import 'package:flutter/material.dart';

class Item {
  final String name;
  final double price;
  final String imagePath; // เพิ่มคุณสมบัติ imageName เพื่อระบุชื่อของไฟล์รูปภาพ
  
  Item({
    required this.name,
    required this.price,
    required this.imagePath, // รับค่า imageName เมื่อสร้าง Instance ของ Item
  });
}
