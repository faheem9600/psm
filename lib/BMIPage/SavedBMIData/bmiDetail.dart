import 'package:flutter/material.dart';
import 'package:appsatb/BMIPage/BMIDB/bmi.dart';
import 'package:appsatb/BMIPage/BMIDB/bmiDatabaseHelper.dart';
import 'package:intl/intl.dart';


class BmiDetail extends StatefulWidget {
  
  final String appBarTitle;
  final Bmi bmi;

  BmiDetail(this.bmi, this.appBarTitle);

  @override 
  State<StatefulWidget> createState() {

    return BmiDetailState(this.bmi, this.appBarTitle);
  }
}

class BmiDetailState extends State<BmiDetail> {

  DatabaseHelper helper = DatabaseHelper();

  String appBarTitle;
  Bmi bmi;

  TextEditingController resultbmiController = TextEditingController();

  BmiDetailState(this.bmi, this.appBarTitle);

  @override 
  Widget build(BuildContext context){

    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    resultbmiController.text = bmi.resultbmi;

    return WillPopScope(

      onWillPop: () {

        moveToLastScreen();
      },

      child: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          leading: IconButton(icon: Icon(Icons.arrow_back),
           onPressed: (){

             moveToLastScreen();
           }
           ),

        ),

        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField( controller: resultbmiController, keyboardType: TextInputType.number,
                style: textStyle,
                onChanged: (value){
                  debugPrint('Text Field Changed');
                  updateResultBmi();
                },
                decoration: InputDecoration( 
                  labelText: 'Masukkan Data BMI anda',
                  labelStyle: textStyle, 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  
                ),
              
                ), 
                Padding(padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text( 
                          'Simpan Data',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: (){
                          setState((){
                            debugPrint("Button simpan clicked");
                            _save();
                          });
                        }
                      ),
                      ),

                      Container(width: 5.0),

                      Expanded(child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text('Padam', 
                        textScaleFactor: 1.5,),
                        onPressed: (){
                          setState(() {
                            debugPrint("Padam button clicked");
                            _delete();
                          });
                        },))
                  ]
                ),
                )
            ]
          ),),
        ));
    }

    void moveToLastScreen() {
      Navigator.pop(context, true);
    }

    void updateResultBmi(){
      bmi.resultbmi = resultbmiController.text;
    }

    void _save() async{

      moveToLastScreen();

      bmi.date = DateFormat.yMMMd().format(DateTime.now());
      int result;
      if(bmi.id != null){
        result = await helper.updateBmi(bmi);
      }else {
        result = await helper.insertBmi(bmi);
      }

      if (result != 0){
        _showAlertDialog('Status', 'Data disimpan');
      } else {
        _showAlertDialog('Status', 'Data tidak berjaya disimpan');
      }
    }

    void _delete() async {

      moveToLastScreen();

      if (bmi.id == null) {
        _showAlertDialog('Status', '');
        return;
      }

      int result = await helper.deleteBmi(bmi.id);
      if (result != 0){
        _showAlertDialog('Status', 'Data berjaya dipadam');
      }else {
        _showAlertDialog('Status', 'Error');
      }
  }

  void _showAlertDialog(String title, String message) {

    AlertDialog alertDialog = AlertDialog( title: Text(title),
    content: Text(message),
    );
    showDialog(context: context, 
    builder: (_) => alertDialog);
  }
}