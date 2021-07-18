import 'package:flutter/material.dart';
import 'package:shopnear/components/circularButton.dart';
import 'package:shopnear/components/carousel.dart';
import 'package:shopnear/components/rounded_input_field.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopnear/user_screen/home_page/special_offers.dart';

import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: RoundedInputField(
            hintText: "Search Store",
            onChanged: (value) {},
            icon: Icons.search_rounded,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.black,
                      ),
                      Text(
                        'Kerala, India',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                        "assets/images/b1.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                        "assets/images/b2.jpg",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                        "assets/images/b3.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                        "assets/images/b6.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                        "assets/images/b5.jpg",
                        scale: 2,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: null,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                ListTile(
                  leading: Text(
                    'Find Your Shop',
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
                  shopimage: 'assets/shops/shop1.jpg',
                  shopeName: 'Saathi Stores',
                  status: true,
                ),
                ItemsShopCards(
                  shopimage: 'assets/shops/shop2.jpg',
                  shopeName: 'Aswathis',
                  status: false,
                ),
                ItemsShopCards(
                  shopimage: 'assets/shops/shop3.jpg',
                  shopeName: 'New world',
                  status: true,
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
                ItemsShopCards(
                  shopimage: 'assets/shops/shop7.jpg',
                  shopeName: 'Smarana Books',
                  status: true,
                ),
                ItemsShopCards(
                  shopimage: 'assets/shops/shop6.jpg',
                  shopeName: 'K&K Shop',
                  status: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
