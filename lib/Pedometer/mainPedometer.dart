import 'dart:io';
import 'dart:math';
import 'package:appsatb/BMIPage/BMIPage.dart';
import 'package:appsatb/HomePage/HomePage.dart';
import 'package:appsatb/SenamanPage/SenamanPage.dart';
import 'package:appsatb/SleepPage/mainSleepPage.dart';
import 'package:appsatb/calorieCounter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pedometer/pedometer.dart';
import 'package:flutter/foundation.dart';
import 'dart:ui' as ui;




String _stepCountValue = '0';
String _stepCountValueTemp = '0';
String _day1Steps = '7654';
String _day2Steps = '4345';
String _day3Steps = '8132';
String _day4Steps = '6555';
String _day5Steps = '2546';
String _day6Steps = '3798';
String _km = "0.0";
String _day1Km = '5.97';
String _day2Km = '3.39';
String _day3Km = '6.34';
String _day4Km = '5.11';
String _day5Km = '1.99';
String _day6Km = '2.96';
String _calories = "0.0";
String _day1Cal = '205';
String _day2Cal = '116.1';
String _day3Cal = '224.1';
String _day4Cal = '176.85';
String _day5Cal = '68.58';
String _day6Cal = '100';
var now = new DateTime.now();
var today = now.day;
var hour = now.hour;


void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _enablePlatformOverrideForDesktop();
  runApp(MyPedometer());
}

class MyPedometer extends StatefulWidget {
  MyPedometer({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyPedometerState createState() => _MyPedometerState();
}

class _MyPedometerState extends State<MyPedometer> {


  // For step counter
  StreamSubscription<int> _subscription;

  double number;
  double _convert;
  double _kmx;
  double burnedx;
  double percent=0.0;
  int _goal;
  int _goaltemp;

  @override
  void initState() {
    super.initState();
    //initPlatformState();
    setUpPedometer();
  }


 

  // Pedometer
  void setUpPedometer() {
    Pedometer pedometer = new Pedometer();
    _subscription = pedometer.pedometerStream.listen(_onData,
        onError: _onError, onDone: _onDone, cancelOnError: true);
  }

  void _onData(int stepCountValue) async {
    var hour = now.hour;
    var min = now.minute;
    var sec = now.second;
    if (hour.toString() == '0' && min.toString() == '0' && sec.toString() == '0'){
      setState(() {
      _day1Steps = _day2Steps;
      _day2Steps = _day3Steps;
      _day3Steps = _day4Steps;
      _day4Steps = _day5Steps;
      _day5Steps = _day6Steps;
      _day6Steps = _stepCountValue;
      _day1Km = _day2Km;
      _day2Km = _day3Km;
      _day3Km = _day4Km;
      _day4Km = _day5Km;
      _day5Km = _day6Km;
      _day6Km = _stepCountValue;
      _day1Cal = _day2Cal;
      _day2Cal = _day3Cal;
      _day3Cal = _day4Cal;
      _day4Cal = _day5Cal;
      _day5Cal = _day6Cal;
      _day6Cal = _stepCountValue;
      // int stepCountValue = 0;
      int stepCountValue = 0;
      _stepCountValue = "$stepCountValue";
      _stepCountValueTemp = _stepCountValue;
      print('$stepCountValue');
    });
    }
    setState(() {
      if (_goal==null){
        _goal = 10000;
      }
        _stepCountValue = "$stepCountValue";

      if (stepCountValue>_goal){
        _stepCountValueTemp = _goal.toString(); // Temp is used to avoid the percentage from crossing '1.0'
      }
      else{
        _stepCountValue = _stepCountValue;
      }
    });

    var dist = stepCountValue;
    double y = (dist + .0);

    setState(() {
      number =
          y;
    });

    var long3 = (number);
    long3 = num.parse(y.toStringAsFixed(2));
    var long4 = (long3 / 5000);

    int decimals = 1;
    int fac = pow(10, decimals);
    double d = long4;
    d = (d * fac).round() / fac;
    print("d: $d");

    getDistanceRun(number);

    setState(() {
      _convert = d;
      print(_convert);
    });
  }

  void reset() {
    setState(() {
      _day1Steps = _day2Steps;
      _day2Steps = _day3Steps;
      _day3Steps = _day4Steps;
      _day4Steps = _day5Steps;
      _day5Steps = _day6Steps;
      _day6Steps = _stepCountValue;
      _day1Km = _day2Km;
      _day2Km = _day3Km;
      _day3Km = _day4Km;
      _day4Km = _day5Km;
      _day5Km = _day6Km;
      _day6Km = _stepCountValue;
      _day1Cal = _day2Cal;
      _day2Cal = _day3Cal;
      _day3Cal = _day4Cal;
      _day4Cal = _day5Cal;
      _day5Cal = _day6Cal;
      _day6Cal = _stepCountValue;
      // int stepCountValue = 0;
      int stepCountValue = 0;
      _stepCountValue = "$stepCountValue";
      _stepCountValueTemp = _stepCountValue;
      print('$stepCountValue');
    });
  }

  void _onDone() {}

  void _onError(error) {
    print("Flutter Pedometer Error: $error");
  }

  //function to determine the distance run in kilometers using number of steps
  void getDistanceRun(double number) {
    var distance = ((number * 78) / 100000); // assuming that a person walks 78km per 1 Lakh steps
    distance = num.parse(distance.toStringAsFixed(2));
    var distancekmx = distance * 34; // assuming a person burns 34 calories per km
    distancekmx = num.parse(distancekmx.toStringAsFixed(2));
    //print(distance.runtimeType);
    setState(() {
      _km = "$distance";
      //print(_km);
    });
    setState(() {
      _kmx = num.parse(distancekmx.toStringAsFixed(2));
    });
  }

  //function to determine the calories burned in kilometers using number of steps
  void getBurnedRun() {
    setState(() {
      var calories = _kmx;
      _calories = "$calories";
    });
  }

  


  @override
  Widget build(BuildContext context) {
    RenderErrorBox.backgroundColor = Colors.transparent;
    RenderErrorBox.textStyle = ui.TextStyle(color: Colors.transparent);
    //print(_stepCountValue);
    getBurnedRun();
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Colors.white24,
        appBar: new AppBar(
          title: const Text('Pedometer'),
          backgroundColor: Colors.blue,
          elevation: 4.0,
        ),  
        drawer: Drawer(
          child: Column(
            children: <Widget> [
              UserAccountsDrawerHeader(accountName: Text("Selamat Datang"), 
              accountEmail: null),
              ListTile(
              title: Text("Laman Utama"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => HomePage(), ));
               
                  
              },
              ),
              ListTile(title: Text("Kalkulator BMI",),
              onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BMIPage(), ));
                
              },),
              ListTile(
                title: Text("Pedometer"),
                onTap: (){

                 

                },
              ),
              ListTile(
                title: Text("Senaman"),
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => SenamanPage(), ));

                },
              ),
              ListTile(
                title: Text("Kalori"),
                onTap: (){

                   Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CalorieCounter(), ));

                  

                },
              ),
               ListTile(
                title: Text("Waktu Rehat"),
                
                onTap: (){
               
                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MainSleepPage(), ));

                  
                },
              ),
             //  ListTile(
             //   title: Text("Kadar Degupan Jantung"),
              //  onTap: (){
             //     
             //   },
             // ),

              
            ]
          ),
        ),   
        body: 
        new ListView(
          padding: EdgeInsets.only(right: 5.0,bottom: 5.0,left: 5.0,top: 50.0),
          children: <Widget>[
            
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment
                  //       .bottomCenter, //cambia la iluminacion del degradado
                  //   end: Alignment.topCenter,
                  //   colors: [Color(0xFFA9F5F2), Color(0xFF01DFD7)],
                  // ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(27.0),
                    bottomRight: Radius.circular(27.0),
                    topLeft: Radius.circular(27.0),
                    topRight: Radius.circular(27.0),
                  )),
                   child: new CircularPercentIndicator(
                  radius: 200.0,
                  lineWidth: 13.0,
                  animation: true,
                  center: Container(
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.only(left: 40.0),
                          child: Icon(
                            FontAwesomeIcons.walking,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text(
                            '$_stepCountValue',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //percent: double.parse((int.parse(_stepCountValueTemp)/_goal).toString()),
                  footer: 
                  new Text(
                    "Goal: $_goal",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Colors.white),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purpleAccent,
                ),
            ),
             Divider(
                height: 50.0,
              ),
                            Container(
                width: 80,
                height: 100,
                padding: EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
                color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                    new Container(
                      child: new Card(
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/map.png"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          child: Text(
                            "",
                            textAlign: TextAlign.right,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                          ),
                        ),
                        color: Colors.white54,
                      ),
                    ),
                    VerticalDivider(
                      width: 20.0,
                    ),
                    new Container(
                      child: new Card(
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/burn.png"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                    VerticalDivider(
                      width: 20.0,
                    ),
                    new Container(
                      child: new Card(
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/step.png"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
              ),
              Container(
                padding: EdgeInsets.only(top: 2.0),
                width: 150, //ancho
                height: 50, //largo tambien por numero height: 300
                color: Colors.transparent,
                child: Row(
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(left: 30.0),
                      child: new Card(
                        child: Container(
                          child: Text(
                            "$_km Km",
                            textAlign: TextAlign.left,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ),
                        color: Colors.purple,
                      ),
                    ),
                    VerticalDivider(
                      width: 20.0,
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: 25.0),
                      child: new Card(
                        child: Container(
                          child: Text(
                            "$_calories kCal",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ),
                        color: Colors.red,
                      ),
                    ),
                    VerticalDivider(
                      width: 5.0,
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: 30.0),
                      child: new Card(
                        child: Container(
                          child: Text(
                            "$_stepCountValue \nlangkah",
                            textAlign: TextAlign.left,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
              child: Icon(Icons.settings),
              onPressed: () { showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container (
                    height: 370,
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                    child: Column(
                      children: <Widget>[
                        Text('Reset your goal.',
                          style: TextStyle(fontSize: 18.0)
                        ),
                        SizedBox(height: 20.0),
                        
                        TextFormField(
                          decoration:  InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple, width: 2.0)
                            ),
                          ),
                          validator: (val) => val.isEmpty ? 'Sasaran anda' : null,
                          onChanged: (val) => setState(
                            () => _goaltemp = int.parse(val),
                          ),
                        ),
                        Divider(
                          height: 4,
                        ),
                        RaisedButton( 
                          color: Colors.pink[400],
                          child: Text(
                            'Ya',
                            style: TextStyle(color: Colors.white)
                          ),
                          onPressed: () => setState(() => _goal = _goaltemp)
                        ),
                        
                      ]
                    )
                  );
                }
              );
            }
          ),
        )
      ),
    );
  }
}


