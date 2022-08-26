
import 'package:day11_sliver_mediaquery/screen/home_page.dart';
import 'package:day11_sliver_mediaquery/screen/product.dart';
import 'package:day11_sliver_mediaquery/screen/profile.dart';
import 'package:flutter/material.dart';

import 'category_page.dart';
import 'category_page.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

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

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currIndex,

        onTap: (value){
          setState((){
            currIndex=value;
          });
        },
        iconSize: 20,
        selectedFontSize: 20,
        showUnselectedLabels: true,
        unselectedFontSize: 12,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: currIndex == 0 ? Colors.green:Colors.redAccent,
              ),
              label: "Home",
              backgroundColor: Colors.blueGrey
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_rounded,
                color: currIndex == 1 ? Colors.green:Colors.redAccent,
              ),
              label: "profile",
              backgroundColor: Colors.blueGrey
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined,
                color: currIndex == 2 ? Colors.green:Colors.redAccent,
              ),
              label: "category",
              backgroundColor: Colors.blueGrey
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits,
                color: currIndex == 3
                    ? Colors.green:Colors.redAccent,
              ),
              label: "product",
              backgroundColor: Colors.blueGrey
          ),



        ],
      )
    );
  }
}
