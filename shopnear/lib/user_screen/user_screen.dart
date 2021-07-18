import 'package:flutter/material.dart';
import 'package:shopnear/user_screen/profile/profile_screen.dart';


class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return UserProfileScreen();
  }
}
