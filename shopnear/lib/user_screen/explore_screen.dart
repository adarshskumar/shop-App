import 'package:flutter/material.dart';
import 'package:shopnear/components/rounded_button.dart';
import 'package:shopnear/screens/version_details.dart';
import 'package:shopnear/user_screen/home_page/categories.dart';
import 'package:shopnear/user_screen/home_page/discount_banner.dart';
import 'package:shopnear/user_screen/home_page/special_offers.dart';
import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              DiscountBanner(),
              Categories(),
              SpecialOffers(),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Text(
                  'Suggested For You',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                trailing: Text(
                  'View All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
              ItemsShopCards(
                shopimage: 'assets/shops/shop4.jpg',
                shopeName: 'Keerthi Groceries',
                status: true,
              ),
              ItemsShopCards(
                shopimage: 'assets/shops/shop5.jpg',
                shopeName: 'Iris bakes',
                status: true,
              ),
              ItemsShopCards(
                shopimage: 'assets/shops/shop6.jpg',
                shopeName: 'Dreams Store',
                status: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
