import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VersionTwoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: Get.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/bagadd.png'),
                ),
              )),
          Text(
            'Version 2.0.1 Release',
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
            'Order Place option is Now availabe on Shopnear Version 2.0.1',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
