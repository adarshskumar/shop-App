import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopnear/components/rounded_button.dart';
import 'package:shopnear/screens/SignInPage.dart';
import 'package:shopnear/screens/loggedIn_screen.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);
  @override
  _LocationPageState createState() => _LocationPageState();
}

String? dropdownValue;
List listItem = [
  "Thiruvanthapuram",
  "Kollam",
  "Pathanamthitta",
  "Alappuzha",
];

class _LocationPageState extends State<LocationPage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      
        child: Column(
          children: [
            // SizedBox(
            //   height: 25,
            // ),
            Container(
              child: Image.asset(
                'assets/images/loc.PNG',
                fit: BoxFit.contain,
              ),
              width: Get.width,
            
            ),
            // SizedBox(
            //   height: 25,
            // ),
            Text(
              'Select your location',
              style: TextStyle(
                color: Color(0xff181725),
                fontSize: 26,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            // SizedBox(
            //   height: 25,
            // ),
            Text(
              'Switch on your location to stay in tune with \n what’s happening in your area',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
              child: DropdownButton<String>(
                hint: Text('Thiruvanthapuram'),
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
                value: dropdownValue,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(color: Color(0xff181725), fontSize: 16),
                underline: Container(
                  height: 1,
                  color: Color(0xffE2E2E2),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Thiruvananthapuram',
                  'Kollam',
                  'Pathanamthitta',
                  'Alappuzha',
                  'Kottyam',
                  'Idukki',
                  'Ernakulam',
                  'Thrissur',
                  'Palakkad',
                  'Malappuram',
                  'Kozhikode',
                  'Wayanad',
                  'Kannur',
                  'Kasargod',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
              child: TextFormField(
                controller: myController,
                maxLength: 6,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: InputBorder.none,
                  hintText: 'Enter PinCode',
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            RoundedButton(
              text: 'Submit',
              color: Color(0xff53B175),
              press: () {
                if (myController.text.length == 6){
                  Get.off(LoggedInScreen());
                }
                else{
                  print('not permit');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
