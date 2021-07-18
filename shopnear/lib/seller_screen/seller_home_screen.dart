import 'package:flutter/material.dart';
import 'package:shopnear/screens/seller_version.dart';
import 'package:shopnear/screens/version_details.dart';

class SellerHomeScreen extends StatefulWidget {
  const SellerHomeScreen({Key? key}) : super(key: key);

  @override
  _SellerHomeScreenState createState() => _SellerHomeScreenState();
}

class _SellerHomeScreenState extends State<SellerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),backgroundColor: Colors.green,),
      body: SellerVersionTwoDetails()
    );
  }
}