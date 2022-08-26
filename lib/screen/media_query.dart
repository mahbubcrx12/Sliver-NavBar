import 'package:flutter/material.dart';
class MediaQueryHome extends StatefulWidget {
  const MediaQueryHome({Key? key}) : super(key: key);

  @override
  State<MediaQueryHome> createState() => _MediaQueryHomeState();
}

class _MediaQueryHomeState extends State<MediaQueryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          color: Colors.teal,
          child: Image.network("https://upload.wikimedia.org/wikipedia/en/4/45/Berlin_%28Money_Heist%29.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          height: MediaQuery.of(context).size.height - 200,
          width: MediaQuery.of(context).size.width -20,
        ),
      ),
    );
  }
}
