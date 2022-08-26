import 'package:day11_sliver_mediaquery/screen/bottom_nav.dart';
import 'package:day11_sliver_mediaquery/screen/curv_nav_bar.dart';

import 'package:day11_sliver_mediaquery/screen/home_page.dart';
import 'package:day11_sliver_mediaquery/screen/media_query.dart';
import 'package:day11_sliver_mediaquery/screen/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MediaQueryHome(),
    );
  }
}
