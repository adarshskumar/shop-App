import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/user_screen/items_list/product_cards.dart';
import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class ListedItemsOfShop extends StatelessWidget {
  const ListedItemsOfShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back(canPop: true);
            print('jj');
          },
        ),
      ),
      body: ListView(
        children: [
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
              productprice: '30', productName: 'Wheat', productUnit: '1 Kg'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '35', productName: 'Chilli', productUnit: '500g'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '42', productName: 'Tomato', productUnit: '1 Kg'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '38', productName: 'Potato', productUnit: '1 Kg'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '41', productName: 'Savala', productUnit: '1 Kg'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '20', productName: 'Bread', productUnit: '1 Pack'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '14', productName: 'Ginger', productUnit: '500g'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '34', productName: 'Garlic', productUnit: '500g'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '10', productName: 'Pea', productUnit: '100 g'),
          SizedBox(
            height: 10,
          ),
          ItemsProductCard(
              productprice: '20',
              productName: 'Soyabeen',
              productUnit: '200 g'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
