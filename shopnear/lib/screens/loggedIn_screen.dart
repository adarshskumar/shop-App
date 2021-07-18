import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:shopnear/screens/SignInPage.dart';
import 'package:shopnear/user_screen/home_page/bottom_bar.dart';

class LoggedInScreen extends StatelessWidget {
  const LoggedInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            print('hasdata');
            return BottomBarScreen();
          } else if (snapshot.hasError) {
            print('errr');
            return Center(child: Text('Oops!! Something Went Wrong'));
          }
          return SignInPage();
        },
      ),
    );
  }
}
