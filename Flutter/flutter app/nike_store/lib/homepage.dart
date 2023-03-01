import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_store1/newpage.dart';
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
                                  Icons.search,
                                  color: Colors.black,
                                 size: 20,
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
                        padding: EdgeInsets.only(left: 10,bottom: 10),
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
                child: NewPage(),
                margin: EdgeInsets.only(top: 25),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
    ));
  }
}
