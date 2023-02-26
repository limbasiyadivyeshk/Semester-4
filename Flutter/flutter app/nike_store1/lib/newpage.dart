import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_store1/shoedetail.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}
class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 25,
                      ),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 40,height:120,child:Expanded(
                          child: Container(child:Column(
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
                                              child: Image.network(
                                                'https://raw.githubusercontent.com/limbasiyadivyeshk/Semester-4/main/Flutter/flutter%20app/nike_store/assets/images/nike1.png',
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
                          )
                        ));
                      }
                  ),
                ),
                padding: EdgeInsets.only(top: 40),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
