import 'dart:async';
import 'package:appsatb/SenamanPage/Menengah/KakiMenengah.dart';
import 'package:flutter/material.dart';


class KakiTahniahMenengah extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return StartState();
  }

}

class StartState extends State<KakiTahniahMenengah> {
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
      builder: (context) => new KakiMenengah())
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
              child: Image.asset("images/Tahniah.png",
              scale: 1,),
            ),
            Padding(padding: EdgeInsets.only(top:20)),
            Text("TAHNIAH",
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