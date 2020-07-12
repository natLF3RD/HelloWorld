import 'package:flutter/material.dart';
import 'package:withackathon/home.dart';
import 'dart:io';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    //'/location': (context) => ChooseLocation(),
  },
));

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/home', arguments: {});
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.7,
            ],
            colors: [Colors.red, Colors.orange], // whitish to gray
            tileMode: TileMode.repeated,
          ),// repeats the gradient over the canvas
        ),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: height/2 - 100,),
            Text(
              'SMOKEY',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 80.0,
                fontFamily: "Montserrat",
                color: Colors.white
              ),
            ),
            SizedBox(height: 20,),
            SpinKitWave(
                color: Colors.white,
                size: 50.0,
              ),
          ],
        ),
      ),

    );
  }
}
/*


 */