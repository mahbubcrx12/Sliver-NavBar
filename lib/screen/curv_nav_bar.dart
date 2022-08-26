import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:day11_sliver_mediaquery/screen/category_page.dart';
import 'package:day11_sliver_mediaquery/screen/home_page.dart';
import 'package:day11_sliver_mediaquery/screen/product.dart';
import 'package:day11_sliver_mediaquery/screen/profile.dart';
import 'package:flutter/material.dart';
class CurvBarNav extends StatefulWidget {
  const CurvBarNav({Key? key}) : super(key: key);

  @override
  State<CurvBarNav> createState() => _CurvBarNavState();
}

class _CurvBarNavState extends State<CurvBarNav> {
  int currIndex=0;

  List<Widget> page=[
    HomePage(),
    Profile(),
    CategoryPage(),
    Product(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: page[currIndex],

      bottomNavigationBar: CurvedNavigationBar(

        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.holiday_village_sharp, size: 30, color: Colors.purple,),
          Icon(Icons.person, size: 30,color: Colors.teal,),
          Icon(Icons.category_outlined, size: 30,color: Colors.black,),
          Icon(Icons.production_quantity_limits, size: 30,color: Colors.limeAccent,),

        ],
        color: Colors.lightGreen,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            currIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),

    );
  }
}
