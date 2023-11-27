import 'dart:math';
import 'package:flutter/material.dart';

class DataItem{
  final double value;
  final String label;
  final Color color ;
  DataItem(this.value,this.color,this.label);
}
List<DataItem> Dataset =[
  DataItem(0.2, Colors.red, "English"),
  DataItem(0.25, Colors.yellow, "English"),
  DataItem(0.3, Colors.green, "English"),
  DataItem(0.05, Colors.blue, "English"),
  DataItem(0.2, Colors.orange, "English"),
];

class CustpmPainting extends StatefulWidget {
  // final List<DataItem> = Dataset;
  // CustpmPainting(this.Dataset);
   CustpmPainting({Key? key}) : super(key: key);

   @override
  State<CustpmPainting> createState() => _CustpmPaintingState();
}
class _CustpmPaintingState extends State<CustpmPainting> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPainting"),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: CustomPaint(
          size: Size(10,10),
          painter: Rectangle(),
        ),
      ),
    );
  }
}
class Rectangle extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.green;
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    Offset offset = Offset(0, 0);
    Offset startoffset = Offset(0,size.height);
    Offset endoffset = Offset(size.width,size.height);
    Rect rect = Rect.fromCenter(center: offset, width: 100, height: 100);
    double startAngle = 0;
    double sweepAngle = 5.5;
    RRect rRect = RRect.fromLTRBR(0, 0, 50, 50, Radius.circular(20));
    canvas.drawArc(rect,startAngle,sweepAngle,true,paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}