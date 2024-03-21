import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.0033333,size.height*1.0033333);
    path_0.quadraticBezierTo(size.width*0.1204167,size.height*0.7358333,size.width*0.2091667,size.height*0.7500000);
    path_0.cubicTo(size.width*0.2756250,size.height*0.7450000,size.width*0.3479167,size.height*0.9925000,size.width*0.4608333,size.height*0.9200000);
    path_0.cubicTo(size.width*0.6037500,size.height*0.7395833,size.width*0.6412500,size.height*0.6637500,size.width*0.7400000,size.height*0.7916667);
    path_0.quadraticBezierTo(size.width*0.9470833,size.height*0.6420833,size.width*1.0008333,size.height);

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
