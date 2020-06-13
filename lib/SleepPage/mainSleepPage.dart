import 'package:appsatb/BMIPage/BMIPage.dart';
import 'package:appsatb/SenamanPage/SenamanPage.dart';
import 'package:appsatb/calorieCounter.dart';
import 'package:flutter/material.dart';
import 'timer_service.dart';
import 'pages/log_page.dart';
import 'pages/manual_page.dart';
import 'package:appsatb/HomePage/HomePage.dart';
import 'package:appsatb/Pedometer/mainPedometer.dart';



Future<void> main() async {
  final timerService = TimerService();
  runApp(
    TimerServiceProvider(
      // provide timer service to all widgets of your app
      service: timerService,
      child: MainSleepPage(),
    ),
  );
}

class MainSleepPage extends StatefulWidget {
  MainSleepPage({Key key}) : super(key: key);
  

  _MainSleepPageState createState() => _MainSleepPageState();
}

class _MainSleepPageState extends State<MainSleepPage> {
  int _selectedPage = 0;
  final _pageOptions = [
    //SleepPage(),
    LogPage(),
    ManualPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Waktu Rehat'),
          centerTitle: true,
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.black26,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            //BottomNavigationBarItem(
            //  title: Text('Pengesan Masa'),
             // icon: Icon(Icons.timer),
            //),
            BottomNavigationBarItem(
              title: Text('Data Waktu'),
              icon: Icon(Icons.view_list),
            ),
            BottomNavigationBarItem(
              title: Text('Manual'),
              icon: Icon(Icons.keyboard),
            ),
            
          ],
        ),
        drawer:Drawer(
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
                

                  
                },
              ),
            //   ListTile(
            //    title: Text("Kadar Degupan Jantung"),
            //    onTap: (){
                  
            //    },
            //  ),

            
              
              
            
          
            ])))

        );
      
      
    
  }
}
