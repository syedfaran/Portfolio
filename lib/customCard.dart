import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipBehavior: Clip.antiAlias,
      clipper: MyCustomCard(),
      child: SizedBox(
        height: 450,
        width: 400,
        child: Card(
          //color: Color(0xff133b5c),
          color: Color(0xffff222831),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(18.0),
              topRight:Radius.circular(18.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Syed Faran',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
              Text('Flutter Developer',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomCard extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width*0.50, size.height*0.85);
    path.lineTo(size.width, size.height);
    // path.lineTo(size.width * 0.50, size.height * 0.75);
    // path.lineTo(size.width * 0.10, size.height);
    // path.lineTo(size.width * 0.17, size.height * 0.80);
    // path.lineTo(size.width * 0.40, size.height);
    // path.lineTo(size.width * 0.50, size.height * 0.85);
    // path.lineTo(size.width * 0.60, size.height);
    // path.lineTo(size.width * 0.70, size.height * 0.90);
    // path.lineTo(size.width * 0.80, size.height);
    // path.lineTo(size.width * 0.90, size.height * 0.90);
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
