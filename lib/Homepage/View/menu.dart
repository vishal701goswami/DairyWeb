import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("GENERAL", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
              ListTile(leading: Icon(Icons.dashboard), title: Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)), tileColor: Colors.blue[50]),
              ListTile(leading: Icon(Icons.inventory), title: Text("Inventory")),
              ListTile(leading: Icon(Icons.shopping_cart), title: Text("Sales Orders")),
              ListTile(leading: Icon(Icons.local_shipping), title: Text("Suppliers")),
              ListTile(leading: Icon(Icons.bar_chart), title: Text("Reports")),
              ListTile(leading: Icon(Icons.flash_on), title: Text("Quick Actions")),
              SizedBox(height: 10),
              Text("SUPPORT", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
              ListTile(leading: Icon(Icons.help), title: Text("Help")),
              ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    label: Text("Search"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}