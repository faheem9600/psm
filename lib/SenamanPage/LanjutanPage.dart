import 'package:appsatb/SenamanPage/Lanjutan/BahuDanLanjutan.dart';
import 'package:appsatb/SenamanPage/Lanjutan/DadaLanjutan.dart';
import 'package:appsatb/SenamanPage/Lanjutan/KakiLanjutan.dart';
import 'package:appsatb/SenamanPage/Lanjutan/LenganLanjutan.dart';
import 'package:appsatb/SenamanPage/Lanjutan/OtotPerutLanjutan.dart';

import 'SenamanPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LanjutanPage extends StatelessWidget {
  static const String _title = 'Senaman Lanjutan';

  

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
        body: MyLanjutanWidget(),
      ),

      
      
    );

    
  }
 

}


class MyLanjutanWidget extends StatelessWidget {
  MyLanjutanWidget({Key key}) : super(key: key);

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
              image: AssetImage("images/OtotPerutLanjutan.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Otot Perut Lanjutan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutLanjutan(), ));

      },
      ),
     

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/DadaLanjutan.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Dada Lanjutan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

      },
      ),
     

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/LenganLanjutan.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Lengan Lanjutan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

      },
      ),

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/KakiLanjutan.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Kaki Lanjutan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

         Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => KakiLanjutan(), ));

      },
      ),

      CupertinoButton( 
        child: Container(
          height: 180, 
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/BahuDanLanjutan.png"),
              fit: BoxFit.fitWidth,),
              borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Bahu Dan Punggung Lanjutan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

         Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanLanjutan(), ));

      },
      ),


      
      ],
      
      );
      

}
  
}