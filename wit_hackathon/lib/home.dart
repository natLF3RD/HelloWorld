import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:withackathon/suburb_page.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Map data = {};

  @override
  Widget build(BuildContext context) {
    //data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    //print(data);

    //set background
    //String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    //Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final myController = TextEditingController();
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/sydney_map.JPG"),
                      fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                child: Container(
                  width: width,
                  height: 400,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight, // 10% of the width, so there are ten blinds.
                      colors: [
                        Colors.blue,
                        Colors.tealAccent
                      ], // whitish to gray
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                          child: Center(
                            child: Container(
                              width: width - 50.0,
                              height: 300,

                              child: TextField(
                                controller: myController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),
                                  labelText: 'Search Suburb ',
                                  suffixIcon:IconButton(
                                    onPressed: (){
                                      //TODO: Implement this to push to new screen
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Suburb(suburb_name: myController.text,)));
                                    },
                                    color: Colors.black,
                                    icon:Icon(Icons.search),
                                  ),


                      )),
                   ),),) ],
                  ),

                  //color: Colors.blue[700],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                child: Container(
                  width: width,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Top 5 Hazy Suburbs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: width,
                        height: 170,
                        child: ListView(
                          //TODO: Make These clickable
                          padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            TopHazy(city: "Pyrmont", ppm: 20.0),
                            SizedBox(
                              height: 10.0,
                            ),
                            TopHazy(city: "Sydney", ppm: 19.1),
                            SizedBox(
                              height: 10.0,
                            ),
                            TopHazy(city: "Kingsford", ppm: 15.6),
                            SizedBox(
                              height: 10.0,
                            ),
                            TopHazy(city: "Kensington", ppm: 14.9),
                            SizedBox(
                              height: 10.0,
                            ),
                            TopHazy(city: "Ultimo", ppm: 13.0),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopHazy extends StatelessWidget {
  String city;
  double ppm;
  TopHazy({this.city, this.ppm});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        height: 50,
        //color: Colors.amber[600],
        child: InkWell (
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Suburb(suburb_name: city)));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
//                FlatButton.icon(
//                  onPressed: () {
//                    Navigator.of(context).push(
//                        MaterialPageRoute(builder: (context) => Detail()));
//                  },
////                  icon: Icon(iconName),
//                  label: Text(city,
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontWeight: FontWeight.bold,
//                          fontSize: 20.0
//                      )),
//
//                ),
                  Text(city,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                  Text(ppm.toString() + "ppm",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ]
            ),
          ),
        )
    );
  }
}




/*
import 'dart:math';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String text) async {
    await Future.delayed(Duration(seconds: text.length == 4 ? 10 : 1));
    if (isReplay) return [Post("Replaying !", "Replaying body")];
    List<Post> posts = [];

    for (int i = 0; i < 1; i++) {
      posts.add(Post("$text ", "body random number :"));
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchBar<Post>(
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
          onSearch: _getALlPosts,
          searchBarController: _searchBarController,
          cancellationWidget: Text("Back"),
          emptyWidget: Text("empty"),
          indexedScaledTileBuilder: (int index) => ScaledTile.count(1, index.isEven ? 2 : 1),

          onCancelled: () {
            print("Cancelled triggered");
          },
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          onItemFound: (Post post, int index) {
            return Container(
              @override
              void initState() {
                super.initState();
                if(condition){
                  WidgetsBinding.instance.addPostFrameCallback((_) async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => NextPage()
                        )
                    );
                  });
                }
              }
              color: Colors.lightBlue,
              child: ListTile(
                title: Text(post.title),
                isThreeLine: true,
                subtitle: Text(post.body),

                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail()));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
*/
