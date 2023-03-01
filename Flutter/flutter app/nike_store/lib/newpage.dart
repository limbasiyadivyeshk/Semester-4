import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nike_store1/shoedetail.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
          builder: (context, snapshot) {
            if (snapshot != null && snapshot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 40,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    child: MediaQuery(
                      data: MediaQueryData(size: Size(20, 100)),
                      child: Container(
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
                                            child: Image.network(
                                              snapshot.data![index]['image1']
                                                  .toString(),
                                              width: 125,
                                            ),
                                          )),
                                      Container(
                                        child: Text('\n'),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 25),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Text('  '),
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.star,
                                                  size: 17,
                                                ),
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
                                                        BorderRadius.circular(8),
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
                              child: Text(
                                  snapshot.data![index]['shoesName'].toString(),
                                  style: TextStyle(
                                      fontFamily: 'impact', fontSize: 13)),
                            ),
                            Container(
                              child: Text(
                                snapshot.data![index]['price'].toString(),
                                style: TextStyle(
                                    color: Colors.grey, fontFamily: 'impact'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ShoesDetail();
                      }));
                    },
                  );
                },
                itemCount: snapshot.data!.length,
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: callDemoApi()),
    );
  }
}

Future<List<dynamic>> callDemoApi() async {
  http.Response res = await http
      .get(Uri.parse("https://63f6d55759c944921f79f865.mockapi.io/Nike_Shoes"));
  print("data::${res.body.toString()}");
  List<dynamic> map = jsonDecode(res.body.toString());
  return map;
}
