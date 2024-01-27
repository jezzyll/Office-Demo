import 'package:flutter/material.dart';

class FeeDetails {
  String studentName;
  List<double> monthlyFeeDetails;

  FeeDetails({
    required this.studentName,
    required this.monthlyFeeDetails,
  });
}

class FeeDetailsPage extends StatelessWidget {
  final List<FeeDetails> feeDetailsList = List.generate(
    100,
    (index) => FeeDetails(
      studentName: 'Student ${index + 1}',
      monthlyFeeDetails: List.generate(12, (index) => (index + 1) * 50.0), // Dummy fee details
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Fee Details'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('Student Name')),
            for (int month = 1; month <= 12; month++)
              DataColumn(label: Text('Month $month')),
          ],
          rows: feeDetailsList.map((feeDetails) {
            return DataRow(
              cells: [
                DataCell(Text(feeDetails.studentName)),
                for (double feeAmount in feeDetails.monthlyFeeDetails)
                  DataCell(Text('\Rs$feeAmount')),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
