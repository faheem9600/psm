class Bmi{

  int _id;

  String _resultbmi;

  String _date;

  Bmi(this._resultbmi, this._date, int i,);

  Bmi.withId(this._id, this._resultbmi, this._date);

  int get id => _id;

  String get resultbmi => _resultbmi;

  String get date => _date;

  set resultbmi(String newResultbmi){
    if (newResultbmi.length <=5){
      this._resultbmi = newResultbmi;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  Map<String, dynamic> toMap() {

    var map = Map<String, dynamic>();

    if(id != null){
      map['id'] = _id;
    }

    map['resultbmi'] = _resultbmi;

    map['date'] = _date;

    return map;
  }

  Bmi.fromMapObject(Map<String, dynamic> map){

    this._id = map['id'];

    this._resultbmi = map['resultbmi'];

    this._date = map['date'];
  }

}