import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/components/rounded_button.dart';

import 'package:shopnear/user_screen/home_page/bottom_bar.dart';

class SuccesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              'assets/images/succes.PNG',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 350,
            ),
          ),
          Text(
            'Your Order has been \n accepted',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Your items has been placed and is on \n it’s way to being processed',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          RoundedButton(
            text: 'Track Order',
            color: Color(0xff53B175),
            press: () {
              // Get.off(BottomBarScreen());
            },
          ),
          RoundedButton(
            text: 'Back to Home',
            color: Color(0xff53B175),
            press: () {
              Get.offAll(BottomBarScreen());
            },
          ),
        ],
      ),
    );
  }
}
