import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:appsatb/SleepPage/timer_service.dart';


class SleepPage extends StatefulWidget {

  @override 
  _SleepPageState createState() => _SleepPageState(); 
}

class _SleepPageState extends State<SleepPage> {
   String _timeString;

  @override
  Widget build(BuildContext context) {
    var timerService = TimerService.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                _timeString,
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AnimatedBuilder(
              animation: timerService, // listen to ChangeNotifier
              builder: (context, child) {
                // this part is rebuilt whenever notifyListeners() is called
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.green,
                      onPressed: !timerService.isRunning
                          ? timerService.start
                          : timerService.stop,
                      child: Row(children: <Widget>[
                        !timerService.isRunning
                            ? Icon(Icons.play_arrow)
                            : Icon(Icons.pause),
                        !timerService.isRunning ? Text('START') : Text('PAUSE'),
                      ]),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.redAccent,
                      onPressed: timerService.reset,
                      child: Row(children: <Widget>[
                        Icon(Icons.stop),
                        Text('STOP'),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Masa:\n${timerService.currentDuration.toString().substring(0, 7)}',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat.Hm().format(dateTime);
  }

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    if (this.mounted) {
      setState(() {
        _timeString = formattedDateTime;
      });
    }
  }
}
