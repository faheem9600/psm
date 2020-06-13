import 'package:flutter/material.dart';
import 'package:appsatb/SleepPage/SleepDB/STdatabase_helper.dart';
import 'package:appsatb/SleepPage/SleepDB/ModelST/entry.dart';

class ManualPage extends StatefulWidget {
  ManualPage({Key key}) : super(key: key);

  _ManualPageState createState() => _ManualPageState();
}

class _ManualPageState extends State<ManualPage> {
  var db = DatabaseHelper();
  Entry entry;

  DateTime _startDate = DateTime.now();
  TimeOfDay _startTime = TimeOfDay.now();
  DateTime _endDate = DateTime.now();
  TimeOfDay _endTime = TimeOfDay.now();

  DateTime _startDateTime;
  DateTime _endDateTime;
  Duration _duration;

  @override
  void initState() {
    super.initState();
    _startDateTime = DateTime.now();
    _endDateTime = DateTime.now();
    _duration = Duration.zero;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Tarikh mula: ${_startDate.toString().substring(0, 10)}"),
              RaisedButton(
                child: Text("Pilih tarikh mula"),
                onPressed: () {
                  _selectStartDate(context);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Masa mula: ${formatHourMinutes(_startTime)}"),
              RaisedButton(
                child: Text("Pilih masa mula"),
                onPressed: () {
                  _selectStartTime(context);
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Tarikh akhir: ${_endDate.toString().substring(0, 10)}"),
              RaisedButton(
                child: Text("Pilih tarikh akhir"),
                onPressed: () {
                  _selectEndDate(context);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Masa Akhir: ${formatHourMinutes(_endTime)}"),
              RaisedButton(
                child: Text("Pilih masa akhir"),
                onPressed: () {
                  _selectEndTime(context);
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text("Jumlah masa: " +
              timeWorked(_startDate, _startTime, _endDate, _endTime)
                  .inHours
                  .toString() +
              " jam, " +
              (timeWorked(_startDate, _startTime, _endDate, _endTime)
                          .inMinutes %
                      60)
                  .toString() +
              " minit"),
          RaisedButton(
            child: Text("SIMPAN"),
            onPressed: _saveEntry,
          ),
        ],
      ),
    );
  }

  _saveEntry() {
    Entry entry = new Entry(
        getDayMonthYear(_endDateTime),
        _startDateTime.millisecondsSinceEpoch,
        _endDateTime.millisecondsSinceEpoch,
        _duration.inMinutes);
    print(entry.dayMonthYear.toString() +
        " " +
        entry.startDateTime.toString() +
        " " +
        entry.endDateTime.toString() +
        " " +
        entry.durationInMinutes.toString());
    db.saveEntry(entry);
  }

  Duration timeWorked(DateTime sd, TimeOfDay st, DateTime ed, TimeOfDay et) {
    _startDateTime =
        DateTime.utc(sd.year, sd.month, sd.day, st.hour, st.minute);
    _endDateTime = DateTime.utc(ed.year, ed.month, ed.day, et.hour, et.minute);
    _duration = _endDateTime.difference(_startDateTime);
    return _duration;
  }

  Future<Null> _selectStartDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _startDate,
      firstDate: new DateTime(_startDate.year - 3),
      lastDate: new DateTime(_startDate.year + 3),
    );
    if (picked != null) {
      setState(() {
        _startDate = picked;
      });
    }
  }

  Future<Null> _selectStartTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _startTime);
    if (picked != null) {
      setState(() {
        _startTime = picked;
      });
    }
  }

  Future<Null> _selectEndDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _endDate,
      firstDate: new DateTime(_endDate.year - 3),
      lastDate: new DateTime(_endDate.year + 3),
    );
    if (picked != null) {
      setState(() {
        _endDate = picked;
      });
    }
  }

  Future<Null> _selectEndTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _endTime);
    if (picked != null) {
      setState(() {
        _endTime = picked;
      });
    }
  }

  String getDayMonthYear(DateTime date) {
    return date.day.toString() + date.month.toString() + date.year.toString();
  }

  String formatHourMinutes(TimeOfDay tod) {
    String res = "";
    if (tod.hour < 10) {
      res = "0" + tod.hour.toString();
    } else {
      res = tod.hour.toString();
    }
    res += ":";
    if (tod.minute < 10) {
      res += "0";
      res += tod.minute.toString();
    } else {
      res += tod.minute.toString();
    }
    return res;
  }
}
