import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shopnear/components/rounded_button.dart';
import 'package:shopnear/provider/google_sign.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bagSignUp.png'),
                ),
              ),
            ),
            Center(
              child: Text(
                'Shoping Made Easy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Get your products in an hour",
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "Login/Signup",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 60,
            ),
            RoundedButton(
              text: 'Continue with Google',
              color: Color(0xff53B175),
              press: () {
                Provider.of<GoogleSignInProvider>(context, listen: false)
                    .googleLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}

/* Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: Colors.black,
                onPressed: () {
                  
                      Provider.of<GoogleSignInProvider>(context, listen: false).googleLogin();
                  
                },
                child: Text(
                  'Continue with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ) */

// RoundedButton(

//   text: 'Continue with Google',
//   color: Color(0xff5383EC),
//   press: () {
//     final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
//   provider.googleLogin();
//   },
// ),
