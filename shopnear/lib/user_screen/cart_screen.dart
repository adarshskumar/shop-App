import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/components/rounded_button.dart';

import 'package:shopnear/screens/succes.dart';
import 'package:shopnear/screens/succes.dart';
import 'package:shopnear/screens/version_details.dart';
import 'package:shopnear/user_screen/home_page/bottom_bar.dart';
import 'package:shopnear/user_screen/items_list/product_cards.dart';
import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back(canPop: true);
            print('jj');
          },
        ),
        title: Column(
          children: [
            Text(
              "Your Cart",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            Text(
              "3 items",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ItemsProductCard(
                productprice: '43', productName: 'Rice', productUnit: '1 Kg'),
            SizedBox(
              height: 10,
            ),
            ItemsProductCard(
                productprice: '55',
                productName: 'White Rice',
                productUnit: '1 Kg'),
            SizedBox(
              height: 10,
            ),
            ItemsProductCard(
              productprice: '30',
              productName: 'Wheat',
              productUnit: '1 Kg',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            RoundedButton(
                text: 'Place Order',
                color: Color(0xff53B175),
                press: () {
                  Get.to(SuccesPage());
                }),
          ],
        ),
      ),
    );
  }
}
