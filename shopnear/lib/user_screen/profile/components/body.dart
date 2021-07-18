import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shopnear/provider/google_sign.dart';
import 'package:shopnear/seller_screen/bottom_seller_screen_navigation.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class UserProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: user!.displayName.toString(),
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: user.email.toString(),
            icon: "assets/icons/Mail.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Switch To Seller",
            icon: "assets/icons/Settings.svg",
            press: () {
              Get.to(SellerBottomBarScreen());
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Provider.of<GoogleSignInProvider>(context, listen: false)
                  .googleLogout();
            },
          ),
        ],
      ),
    );
  }
}
