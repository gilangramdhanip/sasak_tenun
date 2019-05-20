import 'package:flutter/material.dart';

class DetailKain extends StatefulWidget {
  @override
  _DetailKainState createState() => _DetailKainState();
}

class _DetailKainState extends State<DetailKain> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child:ClipPath(
              clipper: ClippingClass(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 320.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://www.titintenun.com/wp-content/uploads/2019/04/3-1.jpeg"),
                ),
              ),
            ),
            ),
          ),
          Positioned(
            top: 240,
            left: 55.0,
            right: 40.0,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sepatu Tenun", style: TextStyle(fontSize: 40.0, fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path>{

@override
Path getClip(Size size){
  var path  = Path();
  path.lineTo(0.0, size.height-40);
  path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height);
  path.quadraticBezierTo(size.width - (size.width/4), size.height,size.width, size.height-40);
  path.lineTo(size.width,0.0);
  path.close();
   return path;
}

@override
bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}