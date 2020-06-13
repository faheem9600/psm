import 'dart:async';
import 'package:flutter/material.dart';
import 'KakiLanjutanTimer.dart';

class KakiLanjutanSedia extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return StartState();
  }

}

class StartState extends State<KakiLanjutanSedia> {
  @override
  void initState() {
    
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 7);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => new BurpeeLanjutan())
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/Sedia.gif",
              scale: 2,),
            ),
            Padding(padding: EdgeInsets.only(top:20)),
            Text("ANDA SUDAH BERSEDIA",
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white
            ),),
            Padding(padding: EdgeInsets.only(top: 20.0)),
         
          ],
        ),
      ),
    );
  }

}