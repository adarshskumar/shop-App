import 'package:flutter/material.dart';
import 'package:shopnear/seller_screen/profile/profile_screen.dart';

class SellerUserScreen extends StatefulWidget {
  const SellerUserScreen({Key? key}) : super(key: key);

  @override
  _SellerUserScreenState createState() => _SellerUserScreenState();
}

class _SellerUserScreenState extends State<SellerUserScreen> {
  @override
  Widget build(BuildContext context) {
    return SellerProfileScreen();
  }
}