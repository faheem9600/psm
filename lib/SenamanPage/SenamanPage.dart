import 'package:appsatb/BMIPage/BMIPage.dart';
import 'package:appsatb/HomePage/HomePage.dart';
import 'package:appsatb/Pedometer/mainPedometer.dart';
import 'package:appsatb/SenamanPage/LanjutanPage.dart';
import 'package:appsatb/SenamanPage/MenengahPage.dart';
import 'package:appsatb/SenamanPage/PemulaPage.dart';
import 'package:appsatb/SleepPage/mainSleepPage.dart';
import 'package:appsatb/calorieCounter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SenamanPage extends StatelessWidget {
  static const String _title = 'Senaman';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: const Text(_title)),
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

                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MyPedometer(), ));

                },
              ),
              ListTile(
                title: Text("Senaman"),
                onTap: (){

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
             //   onTap: (){
                  
             //   },
            //  ),

            
             // Divider(),
             // Expanded(child: 
             // Align(alignment: Alignment.bottomCenter,
             // child: ListTile(
             //   title: Text("Log Keluar"),
                
              //),))
              
            ]
          ),
        ),
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
              image: AssetImage("images/3088.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Senaman Pemula",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PemulaPage(), ));
        
      },
      ),

      CupertinoButton( 
        child: Container(
          height: 200, 
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/3088.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Senaman Menengah",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MenengahPage(), ));

      },
      ),

      CupertinoButton( 
        child: Container(
          height: 200, 
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/3088.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Senaman Lanjutan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LanjutanPage(), ));

      },
      ),
      
      ],
      
      );
      

}
  
}