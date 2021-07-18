import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopnear/user_screen/items_list/shop_cards.dart';

class SellerCartScreen extends StatefulWidget {
  const SellerCartScreen({Key? key}) : super(key: key);

  @override
  _SellerCartScreenState createState() => _SellerCartScreenState();
}

class _SellerCartScreenState extends State<SellerCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: Text(
            "Explore",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Text(
                'Why this ad?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              trailing: Text(
                'Close',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff53B175),
                ),
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
                    "assets/images/ad5.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    "assets/images/ad2.jpg",
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    "assets/images/ad3.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    "assets/images/ad4.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    "assets/images/ad1.jpg",
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
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Text(
                'Sponsored Shops',
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
          ],
        ),
      ),
    );
  }
}
