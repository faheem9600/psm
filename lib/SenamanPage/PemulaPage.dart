
import 'package:appsatb/SenamanPage/Pemula/BahuDanPemula.dart';
import 'package:appsatb/SenamanPage/Pemula/DadaPemula.dart';
import 'package:appsatb/SenamanPage/Pemula/KakiPemula.dart';
import 'package:appsatb/SenamanPage/Pemula/LenganPemula.dart';
import 'package:appsatb/SenamanPage/Pemula/OtotPerutPemula.dart';

import 'SenamanPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class PemulaPage extends StatelessWidget {
  static const String _title = 'Senaman Pemula';

  

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
        body: MyWidget(),
      ),

      
      
    );

    
  }
 

}


class MyWidget extends StatelessWidget {
  MyWidget({Key key}) : super(key: key);

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
              image: AssetImage("images/OtotPerutPemula.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Otot Perut Pemula",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutPemula(), ));

      },
      ),
      
     

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/DadaPemula.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Dada Pemula",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MyDadaPemula(), ));


      },
      ),
     

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/LenganPemula.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Lengan Pemula",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

      },
      ),

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/KakiPemula.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Kaki Pemula",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

         Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => KakiPemula(), ));

      },
      ),

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/BahuDanPemula.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Bahu Dan Punggung Pemula",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanPemula(), ));
      },
      ),




      
      ],
      
      
      );
      

}
  
}