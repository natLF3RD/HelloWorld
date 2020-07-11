import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:intl/intl.dart';

class Suburb extends StatelessWidget {
  String suburb_name;
  Suburb({this.suburb_name});



  @override
  Widget build(BuildContext context) {
    double height =  MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();
    String formattedDate =  DateFormat('EEEE - dd-MM-yyyy').format(now);
    return Scaffold(
      appBar: AppBar(
        title: Text(suburb_name),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[




            SizedBox(height: 10.0,),

            Container(
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: InkWell(
                    //splashColor: Colors.blue.withAlpha(30),
                    //TODO: Ontap enlarge grpah by going to a new page
                    onTap: () {
                      //print('Card tapped.');
                    },
                    child: Container(
                      width: width - 20,
                      height: 240,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Daily Smoke Quality Index',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0
                            ),
                          ),
                          Text(
                            '$formattedDate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12.0
                            ),
                          ),
                          Flexible(child: sample3(context)),
                        ],
                      )

                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 18.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                      width: width / 2  - 20,
                      height: width / 2  - 20,
                      decoration: new BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Card(
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "10",
                                  style: TextStyle(
                                    fontSize: 50.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:20.0, left: 4.0),
                                  child: Text(
                                    "PPM",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),


                            Text(
                              "Severe Air Quality",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),

                Container(
                  width: width / 2  - 20,
                  height: width / 2  - 20,
                  decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 10.0,
                      ),
                    ],

                  ),
                  child: Card(

                    //color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'sun.png',
                          ),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[


                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.yellow, Colors.orange], // whitish to gray
                                tileMode: TileMode.repeated, // repeats the gradient over the canvas
                              ),
                            ),
                          ),

                          Text(
                            "27",
                            style: TextStyle(
                              fontSize: 27.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),



                        ],
                      ),
                    ),


                  ),

                ),



              ],
            ),



            SizedBox(height: 20.0,),

            Flexible(
              child: Container(
                width: width - 20,
                height: 210,
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),

                  child: Column (

                    children: <Widget>[
                      Text(
                          "Recommendations",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),

                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              width: (width - 40)/3,
                              height: 120,
                              decoration: new BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: Card(
                                //color: Colors.orange[600],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),

                                  child: Image.asset(
                                    'assets/images/happy_face_white.jpg',
                                    fit: BoxFit.cover,
                                  ),),

                              )
                          ),

                          Container(
                              width: (width - 40)/3,
                              height: 120,
                              decoration: new BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: Card(
                                //color: Colors.orange[600],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),

                                  child: Image.asset(
                                    'assets/images/medium_face_white.jpg',
                                    fit: BoxFit.cover,
                                  ),),

                              )
                          ),

                          Container(
                              width: (width - 40)/3,
                              height: 120,
                              decoration: new BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: Card(
                                //color: Colors.orange[600],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),

                                  child: Image.asset(
                                    'assets/images/sad_face_red.jpg',
                                    fit: BoxFit.scaleDown,
                                  ),),

                              )
                          ),
                        ],
                      ),



                    ],
                  ),
                ),
              )

            ),
            //Flexible(child: Graph()),
            //sample3(context),
          ],
        ),
      ),
    );
  }
}

Widget sample3(BuildContext context) {
  final toDate = DateTime.now().add(Duration(hours: 5));

  final fromDate = DateTime.now().subtract(Duration(hours: 5));

  final date1 = DateTime.now().subtract(Duration(hours: 5));
  final date2 = DateTime.now().subtract(Duration(hours: 4));
  final date3 = DateTime.now().subtract(Duration(hours: 5));
  final date4 = DateTime.now().subtract(Duration(hours: 3));
  final date5 = DateTime.now().subtract(Duration(hours: 2));
  final date6 = DateTime.now().subtract(Duration(hours: 1));
  final date7 = DateTime.now();
  final date8 = DateTime.now().add(Duration(hours: 1));
  final date9 = DateTime.now().add(Duration(hours: 2));
  final date10 = DateTime.now().add(Duration(hours: 3));
  final date11 = DateTime.now().add(Duration(hours: 4));
  final date12 = DateTime.now().add(Duration(hours: 5));

  return Center(
    child: Container(
      color: Colors.white,
      height: 180,
      width: MediaQuery.of(context).size.width - 10,
      child: BezierChart(
        fromDate: fromDate,
        bezierChartScale: BezierChartScale.HOURLY,
        toDate: toDate,
        selectedDate: DateTime.now(),
        series: [
          BezierLine(
            label: "PPM",
            lineColor: Colors.black,
            dataPointFillColor: Colors.black,
            dataPointStrokeColor: Colors.black,

            data: [
              DataPoint<DateTime>(value: 10, xAxis: date1),
              DataPoint<DateTime>(value: 50, xAxis: date2),
              DataPoint<DateTime>(value: 10, xAxis: date3),
              DataPoint<DateTime>(value: 50, xAxis: date4),
              DataPoint<DateTime>(value: 10, xAxis: date5),
              DataPoint<DateTime>(value: 50, xAxis: date6),
              DataPoint<DateTime>(value: 10, xAxis: date7),
              DataPoint<DateTime>(value: 50, xAxis: date8),
              DataPoint<DateTime>(value: 10, xAxis: date9),
              DataPoint<DateTime>(value: 50, xAxis: date10),
              DataPoint<DateTime>(value: 10, xAxis: date11),
              DataPoint<DateTime>(value: 50, xAxis: date12),
            ],
          ),
        ],
        config: BezierChartConfig(
          displayYAxis: true,
          stepsYAxis: 10,
          yAxisTextStyle: TextStyle(
              color: Colors.black
          ),
          xAxisTextStyle: TextStyle(
              color: Colors.black
          ),

          bubbleIndicatorColor: Colors.black,
          bubbleIndicatorTitleStyle: TextStyle(
            color: Colors.white,
          ),
          bubbleIndicatorLabelStyle: TextStyle(
            color: Colors.white,
          ),
          bubbleIndicatorValueStyle: TextStyle(
            color: Colors.white,
          ),

          verticalIndicatorStrokeWidth: 3.0,
          xLinesColor: Colors.white,
          verticalIndicatorColor: Colors.white,
          showVerticalIndicator: true,
          verticalIndicatorFixedPosition: false,
          backgroundColor: Colors.white,
          footerHeight: 30.0,
        ),
      ),
    ),
  );
}

class Graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width * 0.9,
        child: BezierChart(
          bezierChartScale: BezierChartScale.CUSTOM,
          xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
          series: const [
            BezierLine(
              data: const [
                DataPoint<double>(value: 10, xAxis: 0),
                DataPoint<double>(value: 130, xAxis: 5),
                DataPoint<double>(value: 50, xAxis: 10),
                DataPoint<double>(value: 150, xAxis: 15),
                DataPoint<double>(value: 75, xAxis: 20),
                DataPoint<double>(value: 0, xAxis: 25),
                DataPoint<double>(value: 5, xAxis: 30),
                DataPoint<double>(value: 45, xAxis: 35),
              ],
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 3.0,
            verticalIndicatorColor: Colors.black26,
            showVerticalIndicator: true,
            backgroundColor: Colors.blue,
            snap: false,
            displayYAxis: true,
            stepsYAxis: 5,

          ),
        ),
      ),
    );
  }
}
