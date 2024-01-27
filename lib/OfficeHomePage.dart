import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Majlis Office'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildCard(context, 'Staff', '/staff'),
          _buildCard(context, 'Non-Staff', '/nonStaff'),
          _buildCard(context, 'New Admission', '/newAdmission'),
          _buildCard(context, 'Fee Details', '/feeDetails'),
          _buildCard(context, 'Stock', '/stock'),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
