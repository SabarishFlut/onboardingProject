
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screens/plant_app/pie_chart.dart';


class DataItem{
  final double value;
  final String label;
  final Color color ;
  DataItem(this.value,this.color,this.label);
}
List<DataItem> dataset =[
  DataItem(0.2, Colors.red, "English"),
  DataItem(0.25, Colors.yellow, "English"),
  DataItem(0.3, Colors.green, "English"),
  DataItem(0.05, Colors.blue, "English"),
  DataItem(0.2, Colors.orangeAccent, "English"),
];

class ChartWidget extends StatefulWidget {


  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: CustomPaint(
        child: Container(),
        painter: PieChart(dataset),
      ),
    );
  }
}

class PieChart extends CustomPainter{
   final List<DataItem> dataset;
   PieChart(this.dataset);
  @override
  void paint(Canvas canvas, Size size) {
    final c = Offset(200, 400);
    final radius = 200.0;
    final rect = Rect.fromCenter(center: c, width: radius, height: radius);
    var startAngle = 0.0;
    dataset.forEach((element) {
      final sweepAngle = element.value  *2 * pi;
      final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = element.color;
      canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
      print("${sweepAngle}**57");
      startAngle += sweepAngle;
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }}