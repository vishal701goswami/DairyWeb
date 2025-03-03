import 'package:flutter/material.dart';

class TableSalesPage extends StatefulWidget {
  @override
  _TableSalesPageState createState() => _TableSalesPageState();
}

class _TableSalesPageState extends State<TableSalesPage> {


  final List<Map<String, dynamic>> salesData = [
    {'channel': 'Draft', 'direct': 2, 'wholesale': 0, 'retail': 2},
    {'channel': 'Confirmed', 'direct': 32, 'wholesale': 41, 'retail': 12},
    {'channel': 'Packed', 'direct': 42, 'wholesale': 33, 'retail': 25},
    {'channel': 'Shipped', 'direct': 23, 'wholesale': 11, 'retail': 16},
    {'channel': 'Invoiced', 'direct': 7, 'wholesale': 14, 'retail': 21},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            
          ),
          child: Column(
            children: [
              // Table Header
              Container(
                decoration: BoxDecoration(
                  // color: Colors.blue.shade50,
                  // borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text("Channel", style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(child: Text("Direct Sales", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(child: Text("Wholesale", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold))),
                    Expanded(child: Text("Retail", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              Divider(),

              // Table Rows
              Column(
                children: salesData.map((data) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(data['channel'], style: TextStyle(fontWeight: FontWeight.w500))),
                        Expanded(child: Text(data['direct'].toString(), textAlign: TextAlign.center)),
                        Expanded(child: Text(data['wholesale'].toString(), textAlign: TextAlign.center)),
                        Expanded(child: Text(data['retail'].toString(), textAlign: TextAlign.center)),
                      ],
                    ),
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
