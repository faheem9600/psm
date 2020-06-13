
import 'package:appsatb/HomePage/HomePage.dart';
import 'package:appsatb/HomePage/MTengahHari.dart';
import 'package:appsatb/HomePage/MakanMalam.dart';
import 'package:appsatb/HomePage/Sarapan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PilihanPage extends StatelessWidget {
  static const String _title = 'Kalori Dalam Makanan';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: const Text(_title),
        leading: IconButton(icon: Icon(Icons.arrow_back),
           onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => HomePage(), ));

            
           }
           ),),
        body: MyStatelessWidget(),
 
      
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        CupertinoButton( 
        child: Container(
          height: 200, 
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Sarapan.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Menu \nSarapan",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => Sarapan(), ));
        
      },
      ),

      CupertinoButton( 
        child: Container(
          height: 200, 
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/MT.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                " Menu Makan \nTengah Hari",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MakanTengahHari(), ));

      },
      ),

      CupertinoButton( 
        child: Container(
          height: 200, 
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/MM.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Menu Makan Malam",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MakanMalam(), ));

      },
      ),
      
      ],
      
      );
      

}

  
}