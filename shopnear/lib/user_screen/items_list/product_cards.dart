import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/user_screen/items_list/detailed_shop.dart';

class ItemsProductCard extends StatelessWidget {
  String productprice;

  String productName;

  String productUnit;
  ItemsProductCard({
    Key? key,
    required this.productprice,
    required this.productName,
    required this.productUnit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: Get.width,
      child: GestureDetector(
        onTap: () {},
        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFF5F5F5),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    productName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        productUnit,
                        style: TextStyle(fontSize: 11, color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 9,),
                    Text(
                      productprice,
                      style: TextStyle(fontSize: 11, color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   width: Get.width / 2,
          // ),
          // Container(
          //   height: 40,
          //   width: 40,
          //   child: IconButton(
          //     icon: Icon(Icons.add),
          //     onPressed: () {},
          //   ),
          // ),
          //   ],
          // ),
        ),
      ),
      // ),
    );
  }
}
