import 'package:appsatb/BMIPage/BMIPage.dart';
import 'package:appsatb/HomePage/CalorieDetailPage.dart';
import 'package:appsatb/HomePage/SenamRobik.dart';
import 'package:appsatb/Pedometer/mainPedometer.dart';
import 'package:appsatb/SenamanPage/SenamanPage.dart';
import 'package:appsatb/SleepPage/mainSleepPage.dart';
import 'package:flutter/material.dart';
import 'package:appsatb/calorieCounter.dart';
import 'package:flutter/cupertino.dart';




class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  
  @override
  Widget build(BuildContext context){
      return new Scaffold(
        appBar: AppBar(
         title: Text("Laman Utama"), 
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget> [
              UserAccountsDrawerHeader(accountName: Text("Selamat Datang"), 
              accountEmail: null),
              ListTile(
              title: Text("Laman Utama"),
              onTap: (){
               
                  
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
             //  ListTile(
             //   title: Text("Kadar Degupan Jantung"),
              //  onTap: (){
                  
             //   },
             // ),

            
            //  Divider(),
             // Expanded(child: 
            //  Align(alignment: Alignment.bottomCenter,
            //  child: ListTile(
            //    title: Text("Log Keluar"),
            //    
            //  ),))
              
            ]
          ),
        ),
        body: MenuWidget(),
        );
          
      
  }
  
}

class MenuWidget extends StatelessWidget {
  MenuWidget({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        CupertinoButton( 
        child: Container(
          height: 180, 
          width: 320,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/senamrobik.gif"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(0),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

         Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => VideoSenamrobik(), ));
        
      },
      ),

      CupertinoButton( 
        child: Container(
          height: 200, 
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bmi.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(0),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Indeks Jisim Badan (BMI)",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {



      },
      ),

      CupertinoButton( 
        child: Container(
          height: 200, 
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Cal.jpg"),
              fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(0),
          ),
          child: Container(
             margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Kalori Dalam Makanan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
          ),
        ),
        
      ),
      onPressed: () {

        Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PilihanPage(), ));
        

      },
      ),
      
      ],
      
      );
      

}
  
}