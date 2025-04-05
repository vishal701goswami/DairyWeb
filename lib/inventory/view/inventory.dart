import 'package:dairy/Homepage/View/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Logo",
          style: GoogleFonts.montserrat(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => NavigationMenu(),
                );
              })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 88.h,
            width: MediaQuery.of(context).size.width.w,
            color: Color(0xFFCED4DA),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 24.h,
                      child: Text(
                        "Inventory",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 37.h,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle_outline_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              "Add New Product",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          SizedBox(height: 20.h),
          Text(
            "Recent Activity",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Container(
            height: 88.h,
            width: MediaQuery.of(context).size.width.w,
            child: Row(
              children: [Text("fsds")],
            ),
          )
        ],
      ),
    );
  }
}
