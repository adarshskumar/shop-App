import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/user_screen/items_list/detailed_shop.dart';

class ItemsShopCards extends StatelessWidget {
  String shopimage;
  String shopeName;
  bool status;


  ItemsShopCards({
    required this.shopimage,
    required this.shopeName,

    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: Get.width,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                if(status==true)
                Get.to(ListedItemsOfShop());
                else
                (){};
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFF5F5F5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //container for image
                        Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(shopimage),
                        ),
                        SizedBox(
                          width: 20,
                          height: 40,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              shopeName,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                // Text(
                                //   "Opened Now",
                                //   style: TextStyle(
                                //       fontSize: 11, color: Colors.grey),
                                // ),
                                if (status == true)
                                  Text(
                                    "Opened Now",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.green),
                                  )
                                else
                                  Text(
                                    "Closed Now",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.red),
                                  )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
