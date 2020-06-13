import 'package:flutter/material.dart';
import 'dart:async';
import 'package:appsatb/BMIPage/BMIDB/bmi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:appsatb/BMIPage/BMIDB/bmiDatabaseHelper.dart';
import 'bmiDetail.dart';


class BmiList extends StatefulWidget{

  @override 
  State<StatefulWidget> createState(){

    return BmiListState();
  }
}

class BmiListState extends State<BmiList> {

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Bmi> bmiList;
  int count = 0;

  @override 
  Widget build(BuildContext context) {

    if (bmiList == null) {
      bmiList = List<Bmi>();
      updateListView();
    }

    return Scaffold(
      appBar: AppBar(  
        title: Text('Data BMI'),
      ),
      body: getBmiListView(),

      floatingActionButton:  FloatingActionButton(
        onPressed:(){
          debugPrint('FAB clicked');
          navigateToDetail(Bmi('','',2), 'Tambah Data');

        },
        tooltip: 'Tambah Data',

        child: Icon(Icons.add),

        ),
      );
  }

  ListView getBmiListView(){

    TextStyle resultbmiStyle = Theme.of(context).textTheme.subtitle1;

    return ListView.builder(
      itemCount : count, 
      itemBuilder: (BuildContext context, int position){
        return Card( 
          color: Colors.white,
          elevation: 2.0,
          child: ListTile( 
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.arrow_right)
              ,),

              title: Text(this.bmiList[position].resultbmi, style: resultbmiStyle,),

              subtitle: Text(this.bmiList[position].date),

              trailing: GestureDetector(
                child: Icon(Icons.delete, color: Colors.grey,),
                onTap: (){
                  _delete(context, bmiList [position]);
                },
                ),



                onTap: (){
                  debugPrint('ListTile Tapped');
                  navigateToDetail(this.bmiList[position],'Ubah Data');
                },

          ),
        );
      },
      );
  
  
  }
  
  void _delete(BuildContext context, Bmi bmi) async {

    int result = await databaseHelper.deleteBmi(bmi.id);
    if (result !=0){
      _showSnackBar(context, 'Data dihapus');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message){

    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }


void navigateToDetail(Bmi bmi, String title) async {
  bool result = await Navigator.push(context, MaterialPageRoute(builder: (context){
    return BmiDetail(bmi, title);
  }));

  if (result == true){
    updateListView();
  }
}

void updateListView(){

  final Future<Database> dbFuture = databaseHelper.initializeDatabase();
  dbFuture.then((database){

    Future<List<Bmi>> bmiListFuture = databaseHelper.getBmiList();
    bmiListFuture.then((bmiList){
      setState((){
        this.bmiList = bmiList;
        this.count = bmiList.length;
      });
    });
  });
}

}


