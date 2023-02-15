import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_store/shoedetail.dart';

double angle = 175;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const IconData star = IconData(0xe5f9, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          child: Column(
        children: [
          Container(
            child: Row(children: [
              Expanded(
                child: Container(
                  child: Image.asset('assets/images/nikelogo.png', height: 30),
                  margin: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Expanded(
                child: Container(
                  child: Icon(Icons.menu),
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 10),
                ),
              )
            ]),
            margin: EdgeInsets.only(top: 35),
          ),
          Container(
            child: Text(
              'Collections',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Text(
                    'Shoes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  margin: EdgeInsets.only(
                    left: 25,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black))),
                ),
                Container(
                    child: Text(
                      'Clothing',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    margin: EdgeInsets.only(
                      left: 25,
                    )),
                Container(
                    child: Image.asset(
                      'assets/images/setting.png',
                      height: 25,
                    ),
                    margin: EdgeInsets.only(
                      left: 25,
                    )),
                Container(
                    child: Column(children: []),
                    margin: EdgeInsets.only(
                      left: 25,
                    )),
              ],
            ),
            margin: EdgeInsets.only(left: 10, right: 10, top: 25),
          ),
          Container(
            child: Row(children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ShoesDetail();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(20)),
                                  width: 125,
                                  height: 140,
                                  margin: EdgeInsets.only(top: 10, left: 20),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Transform.rotate(
                                          angle: angle,
                                          child: Container(
                                            child: Image.asset(
                                              'assets/images/nike1.png',
                                              width: 125,
                                            ),
                                          )),
                                      Container(
                                        child: Text('\n'),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Text('  '),
                                              ),
                                              Container(
                                                child: Icon(star),
                                              ),
                                              Container(
                                                child: Text('4.8'),
                                              ),
                                              Container(
                                                child: Text('           '),
                                              ),
                                              Container(
                                                child:
                                                    Icon(CupertinoIcons.heart),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: Colors.white),
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Text('React Frenzy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Container(
                              child: Text(
                                '\$160',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20)),
                                width: 125,
                                height: 140,
                                margin: EdgeInsets.only(top: 10, left: 25),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Transform.rotate(
                                        angle: angle,
                                        child: Container(
                                          child: Image.asset(
                                            'assets/images/nike3.png',
                                            width: 125,
                                          ),
                                          margin: EdgeInsets.only(
                                              left: 10, top: 10),
                                        )),
                                    Container(
                                      child: Text('\n'),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('   '),
                                            ),
                                            Container(
                                              child: Icon(star),
                                            ),
                                            Container(
                                              child: Text('4.8'),
                                            ),
                                            Container(
                                              child: Text('           '),
                                            ),
                                            Container(
                                              child: Icon(CupertinoIcons.heart),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white),
                                              alignment: Alignment.centerRight,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Text('Adapt BB 2.0',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Container(
                            child: Text(
                              '\$350',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20)),
                                width: 125,
                                height: 140,
                                margin: EdgeInsets.only(top: 10, left: 20),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Transform.rotate(
                                        angle: angle,
                                        child: Container(
                                          child: Image.asset(
                                            'assets/images/nike2.png',
                                            width: 125,
                                          ),
                                          margin: EdgeInsets.only(
                                              top: 10, left: 10),
                                        )),
                                    Container(
                                      child: Text('\n'),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('  '),
                                            ),
                                            Container(
                                              child: Icon(star),
                                            ),
                                            Container(
                                              child: Text('4.8'),
                                            ),
                                            Container(
                                              child: Text('           '),
                                            ),
                                            Container(
                                              child: Icon(
                                                  CupertinoIcons.heart_solid),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white),
                                              alignment: Alignment.centerRight,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Text('Air Max Excee',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Container(
                            child: Text(
                              '\$90',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20)),
                                width: 125,
                                height: 140,
                                margin: EdgeInsets.only(top: 10, left: 20),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Transform.rotate(
                                        angle: angle,
                                        child: Container(
                                          child: Image.asset(
                                            'assets/images/nike4.png',
                                            width: 125,
                                          ),
                                          margin: EdgeInsets.only(
                                              top: 10, left: 10),
                                        )),
                                    Container(
                                      child: Text('\n'),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('  '),
                                            ),
                                            Container(
                                              child: Icon(star),
                                            ),
                                            Container(
                                              child: Text('4.8'),
                                            ),
                                            Container(
                                              child: Text('           '),
                                            ),
                                            Container(
                                              child: Icon(CupertinoIcons.heart),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white),
                                              alignment: Alignment.centerRight,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Text('Air Max Impact',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ),
                          Container(
                            child: Text(
                              '\$75.97',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ]),
          )
        ],
      )),
    ));
  }
}
