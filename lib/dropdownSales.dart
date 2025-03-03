import 'package:flutter/material.dart';

class SalesOrderSection extends StatefulWidget {
  @override
  _SalesOrderSectionState createState() => _SalesOrderSectionState();
}

class _SalesOrderSectionState extends State<SalesOrderSection> {
  String selectedRange = 'Last 7 Days'; // Default selected value
  final List<String> timeRanges = ['Last 7 Days', 'Last 1 Month', 'Last 3 Months', 'Last 6 Months', 'Last 1 Year'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
              DropdownButton<String>(
                value: selectedRange,
                icon: Icon(Icons.arrow_drop_down, color: Colors.blue),
                underline: Container(),
                style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedRange = newValue!;
                  });
                },
                items: timeRanges.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}
