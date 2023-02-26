import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_store1/shoedetail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            child: Image.asset(
                              'assets/images/nikelogo.png',
                              width: 70,
                              alignment: Alignment.bottomCenter,
                            ),
                          )),
                          Expanded(
                            child: Container(
                              child: Text(
                                'Collection',
                                style: (TextStyle(
                                    fontFamily: 'impact', fontSize: 20)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      alignment: Alignment.centerLeft,
                    )),
                    Expanded(
                        child: Container(
                      child: Icon(Icons.menu),
                      alignment: Alignment.centerRight,
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          'Shoes',
                          style: TextStyle(
                            fontFamily: 'impact',
                            fontSize: 15,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: Colors.black)),
                        ),
                        margin: EdgeInsets.only(right: 29),
                      ),
                      flex: 2,
                    ),

                    Expanded(
                        child: Container(
                      child: Text(
                        'Clothing',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'impact'),
                      ),
                    ),
                      flex: 2,),
                    Expanded(
                        child: Container(
                      child: Image.asset(
                        'assets/images/setting.png',
                        height: 25,
                      ),
                    )),
                    Expanded(
                      child: Container(
                        child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  Icons.search_rounded,
                                  color: Colors.black,
                                ),
                              hintText: 'Search..',
                              hintStyle: TextStyle(fontSize: 15),
                            )),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )),
                        padding: EdgeInsets.only(left: 5),
                        alignment: Alignment.center,
                      ),
                      flex: 4,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(left: 10, right: 10, top: 25),
              ),
            ),
            Expanded(
              child: Container(
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
                                                  angle: 175,
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
                                                        child: Icon(Icons.star,size: 17,),
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
                                              fontFamily: 'impact',
                                              fontSize: 15)),
                                    ),
                                    Container(
                                      child: Text(
                                        '\$160',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'impact'),
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
                                                angle: 175,
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
                                                      child: Icon(Icons.star,size: 17,),
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
                                            fontFamily: 'impact', fontSize: 15)),
                                  ),
                                  Container(
                                    child: Text(
                                      '\$350',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'impact'),
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
                                                angle: 175,
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
                                                      child: Icon(Icons.star,size: 17,),
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
                                            fontFamily: 'impact', fontSize: 15)),
                                  ),
                                  Container(
                                    child: Text(
                                      '\$90',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'impact'),
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
                                                angle: 175,
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
                                                      child: Icon(Icons.star,size: 17,),
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
                                            fontFamily: 'impact', fontSize: 15)),
                                  ),
                                  Container(
                                    child: Text(
                                      '\$75.97',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'impact'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ]),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
    ));
  }
}
