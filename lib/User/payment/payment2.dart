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
import 'package:flutter_login2/User/payment/card_form_sceen.dart';

void main() {
  runApp(payment2());
}

class payment2 extends StatelessWidget{
  const payment2({
    Key? key,
  }) :super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: ListTile(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: 
            (context) => const Cardformscreen(),
            ),
          );
        },
        title: const Text('Pay with a credit Card'),
        trailing: const Icon(Icons.chevron_right_rounded),
      )
    );
  }
}