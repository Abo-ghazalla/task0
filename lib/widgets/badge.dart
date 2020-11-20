import 'package:flutter/material.dart';

class Badge extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint_0 = new Paint()
      ..color = Color(0xFFF9B700)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
     
         
    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(size.width,0);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(size.width*0.50,size.height*0.50);
    path_0.lineTo(0,size.height);
    path_0.lineTo(0,0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
