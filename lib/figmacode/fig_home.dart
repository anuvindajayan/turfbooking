import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Fig_home(),));
}
class Fig_home extends StatefulWidget {
  const Fig_home({super.key});

  @override
  State<Fig_home> createState() => _Fig_homeState();
}

class _Fig_homeState extends State<Fig_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 393,
      height: 852,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 26,
            top: 19,
            child: Text(
              'Hi   Anuvind',
              style: TextStyle(
                color: Color(0xFF24872E),
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 341,
            top: 19,
            child: Container(
              width: 38,
              height: 40,
              decoration: ShapeDecoration(
                color: Color(0xFFD9D9D9),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 98,
            child: Container(
              width: 361,
              height: 124,
              decoration: ShapeDecoration(
                color: Color(0xFFAADBBB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 263,
            child: Text(
              'Facitities',
              style: TextStyle(
                color: Color(0xFF24872E),
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 329,
            child: Container(
              width: 93,
              height: 141,
              decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
            ),
          ),
          Positioned(
            left: 156,
            top: 329,
            child: Container(
              width: 93,
              height: 141,
              decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
            ),
          ),
          Positioned(
            left: 273,
            top: 329,
            child: Container(
              width: 93,
              height: 141,
              decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
            ),
          ),
          Positioned(
            left: 18,
            top: 98,
            child: Container(
              width: 357,
              height: 121,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/357x121"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 332,
            child: Container(
              width: 89,
              height: 138,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/89x138"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 151,
            top: 332,
            child: Container(
              width: 93,
              height: 143,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/93x143"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 273,
            top: 332,
            child: Container(
              width: 93,
              height: 138,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/93x138"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 501,
            child: Text(
              'Sports',
              style: TextStyle(
                color: Color(0xFF24872E),
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 30.03,
            top: 570.83,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.01),
              child: Container(
                width: 367,
                height: 72,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 31,
            top: 665.99,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.01),
              child: Container(
                width: 367,
                height: 72,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 34,
            top: 765.99,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.01),
              child: Container(
                width: 367,
                height: 72,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 34,
            top: 572,
            child: Container(
              width: 66,
              height: 56,
              decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
            ),
          ),
          Positioned(
            left: 304,
            top: 579,
            child: Container(
              width: 74,
              height: 42,
              decoration: ShapeDecoration(
                color: Color(0xFF24872E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            left: 304,
            top: 679,
            child: Container(
              width: 74,
              height: 42,
              decoration: ShapeDecoration(
                color: Color(0xFF24872E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            left: 310,
            top: 774,
            child: Container(
              width: 74,
              height: 42,
              decoration: ShapeDecoration(
                color: Color(0xFF24872E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            left: 304,
            top: 591,
            child: SizedBox(
              width: 80,
              height: 17,
              child: Text(
                'Book Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 307,
            top: 691,
            child: SizedBox(
              width: 80,
              height: 17,
              child: Text(
                'Book Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 318,
            top: 783,
            child: SizedBox(
              width: 80,
              height: 17,
              child: Text(
                'Book Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 76,
            top: 586,
            child: Text(
              'CRICKET',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 79,
            top: 686,
            child: Text(
              'FOOTBALL',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 79,
            top: 781,
            child: SizedBox(
              width: 247,
              height: 57,
              child: Text(
                'BADMINTON',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
