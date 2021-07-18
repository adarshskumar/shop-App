import 'package:flutter/material.dart';
import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Cart"),
      ),
      body: Container(
        child: Column(
          children: [
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
            // ItemsShopCards(),
          ],
        ),
      ),
    );
  }
}
