import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,

        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("Batman",style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.arrow_back),
              expandedHeight: 200,
              floating: false,
              pinned: true,
              actions: [Icon(Icons.person)],
              backgroundColor: Colors.redAccent,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Image.network("https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F211227135008-02-the-batman-trailer.jpg",
                fit: BoxFit.cover,
                ),
                title: Text(" who Never sleep",style: TextStyle(fontSize: 15,color: Colors.teal),),
                centerTitle: true,
                //expandedTitleScale: 2,

              ),

            ),
            SliverToBoxAdapter(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 20,
                itemBuilder: (context,index){
                  return Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.brown,
                    margin: EdgeInsets.symmetric(vertical: 10),

                  );
                },

              ),
            ),

            Container(
              child: Text("140 results"),
            )
          ],

          
        ),
      ),
    );
  }
}
