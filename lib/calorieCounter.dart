import 'package:appsatb/HomePage/HomePage.dart';
import 'package:appsatb/Pedometer/mainPedometer.dart';
import 'package:appsatb/SenamanPage/SenamanPage.dart';
import 'package:appsatb/charts.dart';
import 'package:appsatb/diary.dart';
import 'package:appsatb/settings.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:appsatb/SleepPage/mainSleepPage.dart';
import 'package:appsatb/BMIPage/BMIPage.dart';



void main() => runApp(MaterialApp(home: CalorieCounter()));

class CalorieCounter extends StatefulWidget {
  @override
  _CalorieCounterState createState() => _CalorieCounterState();
}

class _CalorieCounterState extends State<CalorieCounter> {
  int pageIndex = 0;

  final Diary _diaryScreen = Diary();
  final Charts _chartsScreen = Charts();
  final Settings _settingsScreen = Settings();

  Widget _showPage = new Diary();

  Widget _pageChooser(int page){

    switch(page) {
      case 0:
      return _diaryScreen;
      break;
      case 1: 
      return _chartsScreen;
      break;
      case 2: 
      return _settingsScreen;
      break;
      default:
      return new Container(child: 
      new Center( child: 
      new Text(
        'No Page Found',
        style: new TextStyle( fontSize: 30),
      ))

      );
    }
  }


  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(),
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
              // ListTile(
              //  title: Text("Kadar Degupan Jantung"),
               // onTap: (){
                  
             //   },
             // ),

            
            //  Divider(),
             // Expanded(child: 
             // Align(alignment: Alignment.bottomCenter,
             // child: ListTile(
             //   title: Text("Log Keluar"),
                
            //  ),))
              
            ]
          ),
        ),

        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.fastfood, size: 20),
            Icon(Icons.table_chart, size: 20),
            Icon(Icons.settings, size: 20),
         
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white54,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container( 
          color: Colors.blueAccent,
          child: Center(child: _showPage,),
        
                  
                )
              
            
          
        );
  }
}