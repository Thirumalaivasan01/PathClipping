import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Center(
      child:ClipPath(
      clipper:ClippingClass(),
      child: Container(
      width:400,
      height:400,
      color: Colors.indigo,
        
      ),
        
        
      ),),
          
       ], ),);
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var controlPoint1= Offset(100,size.height-200);
    var controlPoint2= Offset(size.width-100,size.height);
    var endPoint= Offset(size.width, size.height-100);
    //var pi=3.14;
    path.lineTo(0,size.height-100);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy,controlPoint2.dx,controlPoint2.dy,endPoint.dx,endPoint.dy);
    
    //path.arcTo(Rect.fromLTWH(0,0,70,100),1*pi,0.5*pi,false);
    //path.arcTo(Rect.fromPoints(Offset(size.width/2,0),Offset(size.height,0)),1.8 * pi,0.3 * pi,true);
    path.lineTo(size.width,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
