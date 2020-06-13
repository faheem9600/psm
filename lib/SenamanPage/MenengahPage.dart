
import 'package:appsatb/SenamanPage/Menengah/BahuDanMenengah.dart';
import 'package:appsatb/SenamanPage/Menengah/DadaMenengah.dart';
import 'package:appsatb/SenamanPage/Menengah/KakiMenengah.dart';
import 'package:appsatb/SenamanPage/Menengah/LenganMenengah.dart';
import 'package:appsatb/SenamanPage/Menengah/OtotPerutMenengah.dart';

import 'SenamanPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MenengahPage extends StatelessWidget {
  static const String _title = 'Senaman Menengah';

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          
          Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => SenamanPage(), ));
      

        }),),
        body: MyMenengahWidget(),
      ),

      
      
    );

    
  }
 

}


class MyMenengahWidget extends StatelessWidget {
  MyMenengahWidget({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return ListView(
      padding: EdgeInsets.all(5.0),
      children: <Widget>[
        CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/OtotPerutMenengah.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Otot Perut Menengah",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));


      },
      ),
     

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/DadaMenengah.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Dada Menengah",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaMenengah(), ));


      },
      ),
     

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/LenganMenengah.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Lengan Menengah",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganMenengah(), ));


      },
      ),

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/KakiMenengah.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Kaki Menengah",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => KakiMenengah(), ));


      },
      ),

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/BahuDanMenengah.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Bahu Dan Punggung Menengah",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));


      },
      ),


      
      ],
      
      );
      

}
  
}