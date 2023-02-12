import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nike_store/homepage.dart';

class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.black,

                ),
              ),

     Expanded(child:  Container(
          margin: EdgeInsets.only(left: 300),
          decoration: BoxDecoration(color: Colors.white10,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)

            ),
          ),
        width: 200,
        height: 100,

        ), ),
        Container(
         child: CustomPaint(
           painter: MyShape(),
           child: Container(),
          ),
                ),

                Column(
                  children: [
                    Expanded(child: Container(

                      child: Image.asset("assets/images/mainshoe.png"),
                      height: 250,
                    ),
                    flex: 2,),
                    Expanded(child: Container(
                       child: Text(
                            "Start Journy\nWith Nike",
                            style: TextStyle(
                              fontSize: 58,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),),
                    Expanded(child: Container(
                        child: Text(
                            "Smart, gorgeous & fashionable\nCollection",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),

                        ),),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));},
                        child:Container(
                      child:Center(child : Text('Start', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(top: 60),),

                    ),
                    ),


              ]),
    ])));
  }
}

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    final path = Path();
    final paint1 = Paint();


    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(
      size.width*0.13 ,
      size.height * 0.2,
      size.width * 0.3,
      size.height * 0.3,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height*0.55,
      size.width * 1,
      size.height * 0.5,
    );

    path.lineTo(size.width, size.height*0.55);
    path.lineTo(0, size.height*0.55);
    path.moveTo(0, size.height * 0.75);

    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.85,
      size.width * 0.45,
      size.height * 0.75,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.65,
      size.width * 0.85,
      size.height * 0.6,
    );
    path.quadraticBezierTo(
      size.width * 0.95,
      size.height * 0.55,
      size.width * 1,
      size.height * 0.58,
    );

    path.lineTo(size.width, size.height*0.58);
    path.lineTo(size.width, size.height*0.55);
    path.lineTo(0, size.height*0.55);


    
    path.moveTo(size.width * 0.3, size.height);
    path.quadraticBezierTo(
        size.width*0.25,
        size.height * 0.89,
        size.width *0.5,
        size.height *0.9);
    path.quadraticBezierTo(
        size.width*0.73,
        size.height * 0.91,
        size.width *0.75,
        size.height);
    paint1.style = PaintingStyle.fill;
    paint1.color = Colors.white10;
    canvas.drawPath(path, paint1);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
