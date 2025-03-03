import 'package:flutter/material.dart';

class FastMovingItemsSection extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'name': 'Macbook Pro', 'image': 'https://idestiny.in/wp-content/uploads/2024/10/MBP-M2.jpeg'},
    {'name': 'iPhone 14 Pro', 'image': 'https://idestiny.in/wp-content/uploads/2024/10/MBP-M2.jpeg'},
    {'name': 'Zoom75', 'image': 'https://idestiny.in/wp-content/uploads/2024/10/MBP-M2.jpeg'},
     {'name': 'Macbook Pro', 'image': 'https://idestiny.in/wp-content/uploads/2024/10/MBP-M2.jpeg'},
    {'name': 'iPhone 14 Pro', 'image': 'https://idestiny.in/wp-content/uploads/2024/10/MBP-M2.jpeg'},
    {'name': 'Zoom75', 'image': 'https://idestiny.in/wp-content/uploads/2024/10/MBP-M2.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Padding(
          padding: EdgeInsets.all(6),
          child: Text(
            "Fast Moving Items",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 120, // Fixed height for cards
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  
                  width: 100,
                  margin: EdgeInsets.only(left: 16, right: index == items.length - 1 ? 16 : 0),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(items[index]['image']!, height: 40), // Placeholder Image
                      SizedBox(height: 8),
                      Text(
                        items[index]['name']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        // Page Indicator
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              items.length,
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0 ? Colors.blue : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
