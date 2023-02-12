import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_store/homepage.dart';

class ShoesDetail extends StatelessWidget {
  const ShoesDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        height: 100,
        child: Row(
          children: [
            Expanded(
                child: Container(
              child: Center(
                child: Text(
                  'More',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            )),
            Expanded(
              flex: 2,
              child: Container(
                  child: Center(
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.shopping_bag_outlined),
                          margin: EdgeInsets.all(10),
                        )),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'Add to bag',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          flex: 2,
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
              child: BackButton(color: Colors.black),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
            )),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        'React Frenzy',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      margin: EdgeInsets.only(left: 17),
                    ),
                    flex: 7,
                  ),
                  Expanded(
                      child: Container(
                    child: Icon(
                      CupertinoIcons.heart,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8)),
                    height: 34,
                    width: 25,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 17),
                  )),
                ],
              ),
              margin: EdgeInsets.only(bottom: 5),
            ),
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Container(
                    child: Icon(CupertinoIcons.star_fill),
                  ),
                  Container(
                    child: Text(
                      ' 4.8 ',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    child: Text('reviews'),
                  )
                ],
              ),
                  margin: EdgeInsets.only(left: 17),
            )),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 17),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                              child: Text(
                                '\$160',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              alignment: Alignment.topLeft,
                            )),
                            Expanded(
                                child: Container(
                              child: Text(
                                '2 color',
                              ),
                            )),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: Transform.rotate(
                                  angle: angle,
                                  child: Container(
                                    child:
                                        Image.asset('assets/images/nike1.png'),
                                  ),
                                ),
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: Transform.rotate(
                                  angle: angle,
                                  child: Container(
                                      child: Image.asset('assets/images/nike1-1.png')),
                                ),
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Container(
                            margin:
                                EdgeInsets.only(top: 25, left: 15, bottom: 15),
                            padding: EdgeInsets.only(
                              top: 5,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Transform.rotate(
                                  angle: 100,
                                  child: Container(
                                      child: Image.asset(
                                          'assets/images/nike1.png')),
                                )),
                                Expanded(
                                    child: Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(
                                            left: 10, bottom: 15),
                                        child: Image.asset(
                                            'assets/images/nike1-4.png'),
                                        height: 100,
                                      )),
                                      Expanded(
                                          child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(
                                            left: 10, bottom: 15),
                                        child: Image.asset(
                                            'assets/images/nike1-2.png'),
                                        height: 100,
                                      )),
                                      Expanded(
                                          child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(
                                            left: 10, bottom: 15, right: 10),
                                        child: Image.asset(
                                            'assets/images/nike1-3.png'),
                                        height: 100,
                                      )),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50)))),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              flex: 10,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 17),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Text('Sizes',style: TextStyle(fontWeight: FontWeight.bold),),
                    )),
                    Expanded(
                      child: Container(
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Expanded(
                                  child: Container(
                                child: Text(' 6 '),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),

                              )),
                              Expanded(
                                  child: Container(
                                child: Text('6.5'),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text(' 7 '),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text('7.5'),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text(' 8 '),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text('8.5'),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text(' 9 '),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text('9.5'),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text('10 '),
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1,color: Colors.grey.shade300),
                                      right: BorderSide(width: 1,color: Colors.grey.shade300),
                                      left: BorderSide(width: 1,color: Colors.grey.shade300),
                                      bottom: BorderSide(width: 1,color: Colors.grey.shade300),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                            ]),
                        padding: EdgeInsets.only(bottom: 15, top: 15),
                      ),
                      flex: 5,
                    )
                  ],
                ),
                alignment: Alignment.center,
              ),
              flex: 4,
            )
          ],
        ),
      ),
    ));
  }
}
