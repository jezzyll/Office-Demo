import 'package:flutter/material.dart';
import 'package:flutter_office_1/FeeDetailsPage.dart';
import 'package:flutter_office_1/NewAdmissionPage.dart';
import 'package:flutter_office_1/NonStaffPage.dart';
import 'package:flutter_office_1/OfficeHomePage.dart';
import 'package:flutter_office_1/StaffPage.dart';
import 'package:flutter_office_1/StockPage.dart';


void main() {
  runApp(OfficeApp());
}

class OfficeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Majlis Office',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/staff': (context) => StaffPage(),
        '/nonStaff': (context) => NonStaffPage(),
        '/newAdmission': (context) => NewAdmissionPage(),
        '/feeDetails': (context) => FeeDetailsPage(),
        '/stock': (context) => StockPage(),
      },
    );
  }
}


