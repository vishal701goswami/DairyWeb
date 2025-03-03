import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StockReportSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        SizedBox(height: 10),
        Container(
          height: 250, // Increased height for better visualization
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: BarChart(
            BarChartData(
              barGroups: List.generate(
                6,
                (i) => BarChartGroupData(
                  x: i,
                  barRods: [
                    BarChartRodData(
  toY: (i + 1) * 5000.0, // Replacing 'y' with 'toY' (updated property in latest fl_chart versions)
  width: 16,
  borderRadius: BorderRadius.circular(4),
  gradient: LinearGradient(
    colors: [Colors.blue, Colors.purple],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  ),
),
                  ], 
                ),
              ),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      return Text("${value.toInt()}");
                    },
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      List<String> months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"];
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(months[value.toInt()]),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
