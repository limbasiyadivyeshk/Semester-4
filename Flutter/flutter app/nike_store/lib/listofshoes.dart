import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListOfShoes extends StatefulWidget {
  const ListOfShoes({Key? key}) : super(key: key);

  @override
  State<ListOfShoes> createState() => _ListOfShoesState();
}

class _ListOfShoesState extends State<ListOfShoes> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [

              const SizedBox(
                height: 30,
              ),
              courseLayout(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget courseLayout(BuildContext context) {
  List<String> imageFileList = [
    'nike1.png',
    'nike2.png',
    'nike3.png',
    'nike4.png',
  ];
  List<String> NameFileList = [
    'React Frenzy',
    'Air Max Excee',
    'Adapt BB 2.0',
    'Air Max Impact',
  ];
  List<String> Margin = [
    '20',
    '60',
    '20',
    '60',
  ];

  const IconData star = IconData(0xe5f9, fontFamily: 'MaterialIcons');
  return MasonryGridView.count(
      shrinkWrap: true,

      crossAxisCount: 2,
      mainAxisSpacing: 27,
      crossAxisSpacing: 23,
      itemCount: imageFileList.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(children : <Widget>[
          Container(decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(25),),width: 160,height: 150,margin: EdgeInsets.only(top: double.parse(Margin[index])),),
            Column(children: [
              Container(child: Transform.rotate(angle: 100,
                  child: Image.asset(
            'assets/images/${imageFileList[index]}',width: 125,
          )),margin: EdgeInsets.only(top: double.parse(Margin[index])),),
            Row(children: [
              Container(child: Icon(star),),
              Container(child: Text('4.8'),),
            ]),

              Container(child: Text('${NameFileList[index]}'),)
          ]),
          ]),
        );
      }

  );

}
