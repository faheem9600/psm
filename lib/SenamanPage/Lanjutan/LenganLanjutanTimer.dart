import 'package:appsatb/SenamanPage/Lanjutan/LenganLanjutan.dart';
import 'LenganLanjutanTahniah.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class PutarLenganSearahJarumJamLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PutarLenganSearahJarumJam(),
    );
  }
}


class PutarLenganSearahJarumJam extends StatefulWidget {
  PutarLenganSearahJarumJam({Key key}) : super(key: key);

  @override
  _PutarLenganSearahJarumJamState createState() => _PutarLenganSearahJarumJamState();
}

class _PutarLenganSearahJarumJamState extends State<PutarLenganSearahJarumJam> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Putar Lengan Searah Jarum Jam" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PutarLenganJam.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PutarLenganBerlawananArahJarumJamLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PutarLenganBerlawananArahJarumJamLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PutarLenganBerlawananArahJarumJam(),
    );
  }
}


class PutarLenganBerlawananArahJarumJam extends StatefulWidget {
  PutarLenganBerlawananArahJarumJam({Key key}) : super(key: key);

  @override
  _PutarLenganBerlawananArahJarumJamState createState() => _PutarLenganBerlawananArahJarumJamState();
}

class _PutarLenganBerlawananArahJarumJamState extends State<PutarLenganBerlawananArahJarumJam> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Putar Lengan Berlawanan Arah Jarum Jam" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PutarlenganLawanJam.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LompatTanpaTaliLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class LompatTanpaTaliLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LompatTanpaTali(),
    );
  }
}


class LompatTanpaTali extends StatefulWidget {
  LompatTanpaTali({Key key}) : super(key: key);

  @override
  _LompatTanpaTaliState createState() => _LompatTanpaTaliState();
}

class _LompatTanpaTaliState extends State<LompatTanpaTali> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Lompat Tanpa Tali" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/LompatTanpaTali.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CurlBarbelKakiKiriLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class CurlBarbelKakiKiriLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CurlBarbelKakiKiri(),
    );
  }
}


class CurlBarbelKakiKiri extends StatefulWidget {
  @override
  _CurlBarbelKakiKiriState createState() => _CurlBarbelKakiKiriState();
}

class _CurlBarbelKakiKiriState extends State<CurlBarbelKakiKiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Curl Barbel Kaki Kiri" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/CurlBarbelKakiKiri.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CurlBarbelKakiKananLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class CurlBarbelKakiKananLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CurlBarbelKakiKanan(),
    );
  }
}


class CurlBarbelKakiKanan extends StatefulWidget {
  @override
  _CurlBarbelKakiKananState createState() => _CurlBarbelKakiKananState();
}

class _CurlBarbelKakiKananState extends State<CurlBarbelKakiKanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Curl Barbel Kaki Kanan" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/CurlBarbelKakiKanan.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BurpeeLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class BurpeeLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Burpee(),
    );
  }
}


class Burpee extends StatefulWidget {
  @override
  _BurpeeState createState() => _BurpeeState();
}

class _BurpeeState extends State<Burpee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Burpee" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/Burpee.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CrunchCurlLenganKiriLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class CrunchCurlLenganKiriLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CrunchCurlLenganKiri(),
    );
  }
}


class CrunchCurlLenganKiri extends StatefulWidget {
  @override
  _CrunchCurlLenganKiriState createState() => _CrunchCurlLenganKiriState();
}

class _CrunchCurlLenganKiriState extends State<CrunchCurlLenganKiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Crunch Curl Lengan Kiri" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/CrunchCurlKiri.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 14', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CrunchCurlLenganKananLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class CrunchCurlLenganKananLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CrunchCurlLenganKanan(),
    );
  }
}


class CrunchCurlLenganKanan extends StatefulWidget {
  @override
  _CrunchCurlLenganKananState createState() => _CrunchCurlLenganKananState();
}

class _CrunchCurlLenganKananState extends State<CrunchCurlLenganKanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Crunch Curl Lengan Kanan" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/CrunchCurlKanan.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 14', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => AngkatTrisepDiLantaiLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class AngkatTrisepDiLantaiLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new AngkatTrisepDiLantai(),
    );
  }
}


class AngkatTrisepDiLantai extends StatefulWidget {
  @override
  _AngkatTrisepDiLantaiState createState() => _AngkatTrisepDiLantaiState();
}

class _AngkatTrisepDiLantaiState extends State<AngkatTrisepDiLantai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Angkat Trisep Di Lantai" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/AngkatTrisepDilantai.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 18', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => HookBergantianLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class HookBergantianLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HookBergantian(),
    );
  }
}


class HookBergantian extends StatefulWidget {
  HookBergantian({Key key}) : super(key: key);

  @override
  _HookBergantianState createState() => _HookBergantianState();
}

class _HookBergantianState extends State<HookBergantian> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Hook Bergantian" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/HookUp.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PushUpMiliterLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpMiliterLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpMiliter(),
    );
  }
}


class PushUpMiliter extends StatefulWidget {
  @override
  _PushUpMiliterState createState() => _PushUpMiliterState();
}

class _PushUpMiliterState extends State<PushUpMiliter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Militer" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PushUpMiliter.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 14', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => GatorBahuLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class GatorBahuLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new GatorBahu(),
    );
  }
}


class GatorBahu extends StatefulWidget {
  @override
  _GatorBahuState createState() => _GatorBahuState();
}

class _GatorBahuState extends State<GatorBahu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Gator Bahu" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/Gator.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => AngkatTrisepDiLantai2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class AngkatTrisepDiLantai2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new AngkatTrisepDiLantai2(),
    );
  }
}


class AngkatTrisepDiLantai2 extends StatefulWidget {
  @override
  _AngkatTrisepDiLantai2State createState() => _AngkatTrisepDiLantai2State();
}

class _AngkatTrisepDiLantai2State extends State<AngkatTrisepDiLantai2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Angkat Trisep Di Lantai" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/AngkatTrisepDilantaiS.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => HookBergantian2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class HookBergantian2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HookBergantian2(),
    );
  }
}


class HookBergantian2 extends StatefulWidget {
  HookBergantian2({Key key}) : super(key: key);

  @override
  _HookBergantian2State createState() => _HookBergantian2State();
}

class _HookBergantian2State extends State<HookBergantian2> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Hook Bergantian" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/HookUp.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => Burpee2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Burpee2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Burpee2(),
    );
  }
}


class Burpee2 extends StatefulWidget {
  @override
  _Burpee2State createState() => _Burpee2State();
}

class _Burpee2State extends State<Burpee2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Burpee" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/Burpee.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CrunchCurlLenganKiri2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class CrunchCurlLenganKiri2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CrunchCurlLenganKiri2(),
    );
  }
}


class CrunchCurlLenganKiri2 extends StatefulWidget {
  @override
  _CrunchCurlLenganKiri2State createState() => _CrunchCurlLenganKiri2State();
}

class _CrunchCurlLenganKiri2State extends State<CrunchCurlLenganKiri2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Crunch Curl Lengan Kiri" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/CrunchCurlKiri.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 12', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CrunchCurlLenganKanan2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class CrunchCurlLenganKanan2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CrunchCurlLenganKanan2(),
    );
  }
}


class CrunchCurlLenganKanan2 extends StatefulWidget {
  @override
  _CrunchCurlLenganKanan2State createState() => _CrunchCurlLenganKanan2State();
}

class _CrunchCurlLenganKanan2State extends State<CrunchCurlLenganKanan2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Crunch Curl Lengan Kanan" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/CrunchCurlKanan.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 12', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PushUpMiliter2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpMiliter2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpMiliter2(),
    );
  }
}


class PushUpMiliter2 extends StatefulWidget {
  @override
  _PushUpMiliter2State createState() => _PushUpMiliter2State();
}

class _PushUpMiliter2State extends State<PushUpMiliter2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Militer" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PushUpMiliter.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 12', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => GatorBahu2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class GatorBahu2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new GatorBahu2(),
    );
  }
}


class GatorBahu2 extends StatefulWidget {
  @override
  _GatorBahu2State createState() => _GatorBahu2State();
}

class _GatorBahu2State extends State<GatorBahu2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Gator Bahu" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/Gator.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CurlPintuKiriLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class CurlPintuKiriLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CurlPintuKiri(),
    );
  }
}


class CurlPintuKiri extends StatefulWidget {
  @override
  _CurlPintuKiriState createState() => _CurlPintuKiriState();
}

class _CurlPintuKiriState extends State<CurlPintuKiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Curl Pintu Kiri" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PintuKiri.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 8', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CurlPintuKananLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class CurlPintuKananLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CurlPintuKanan(),
    );
  }
}


class CurlPintuKanan extends StatefulWidget {
  @override
  _CurlPintuKananState createState() => _CurlPintuKananState();
}

class _CurlPintuKananState extends State<CurlPintuKanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Curl Pintu Kanan" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PintuKanan.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 8', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PushUpTahanRendahModifikasiLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpTahanRendahModifikasiLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpTahanRendahModifikasi(),
    );
  }
}


class PushUpTahanRendahModifikasi extends StatefulWidget {
  PushUpTahanRendahModifikasi({Key key}) : super(key: key);

  @override
  _PushUpTahanRendahModifikasiState createState() => _PushUpTahanRendahModifikasiState();
}

class _PushUpTahanRendahModifikasiState extends State<PushUpTahanRendahModifikasi> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Tahan Rendah Modifikasi" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PushUpTRM.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => TekanLenganDiDepanDadaLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class TekanLenganDiDepanDadaLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new TekanLenganDiDepanDada(),
    );
  }
}


class TekanLenganDiDepanDada extends StatefulWidget {
  TekanLenganDiDepanDada({Key key}) : super(key: key);

  @override
  _TekanLenganDiDepanDadaState createState() => _TekanLenganDiDepanDadaState();
}

class _TekanLenganDiDepanDadaState extends State<TekanLenganDiDepanDada> {
  int _counter = 18;
  Timer _timer;

  void _startTimer() {
    _counter = 18;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Tekan Lengan Di Depan Dada" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/TekanLenganDada.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PushUpDanPusinganLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpDanPusinganLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpDanPusingan(),
    );
  }
}


class PushUpDanPusingan extends StatefulWidget {
  @override
  _PushUpDanPusinganState createState() => _PushUpDanPusinganState();
}

class _PushUpDanPusinganState extends State<PushUpDanPusingan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Dan Pusingan" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PushUpDanPusingan.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 12', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PereganganTrisepKiriLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganTrisepKiriLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganTrisepKiri(),
    );
  }
}


class PereganganTrisepKiri extends StatefulWidget {
  PereganganTrisepKiri({Key key}) : super(key: key);

  @override
  _PereganganTrisepKiriState createState() => _PereganganTrisepKiriState();
}

class _PereganganTrisepKiriState extends State<PereganganTrisepKiri> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Trisep Kiri" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PereganganTrisepKiri.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PereganganTrisepKananLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganTrisepKananLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganTrisepKanan(),
    );
  }
}


class PereganganTrisepKanan extends StatefulWidget {
  PereganganTrisepKanan({Key key}) : super(key: key);

  @override
  _PereganganTrisepKananState createState() => _PereganganTrisepKananState();
}

class _PereganganTrisepKananState extends State<PereganganTrisepKanan> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Trisep Kanan" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PereganganTrisepKanan.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PereganganBisepBerdiriKiriLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganBisepBerdiriKiriLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganBisepBerdiriKiri(),
    );
  }
}


class PereganganBisepBerdiriKiri extends StatefulWidget {
  PereganganBisepBerdiriKiri({Key key}) : super(key: key);

  @override
  _PereganganBisepBerdiriKiriState createState() => _PereganganBisepBerdiriKiriState();
}

class _PereganganBisepBerdiriKiriState extends State<PereganganBisepBerdiriKiri> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Bisep Berdiri Kiri" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PereganganBisepBerdiriKiri.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PereganganBisepBerdiriKananLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganBisepBerdiriKananLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganBisepBerdiriKanan(),
    );
  }
}


class PereganganBisepBerdiriKanan extends StatefulWidget {
  PereganganBisepBerdiriKanan({Key key}) : super(key: key);

  @override
  _PereganganBisepBerdiriKananState createState() => _PereganganBisepBerdiriKananState();
}

class _PereganganBisepBerdiriKananState extends State<PereganganBisepBerdiriKanan> {
  int _counter = 30;
  Timer _timer;

  void _startTimer() {
    _counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Bisep Berdiri Kanan" ,style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

        Positioned(
          
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new Image.asset('images/PereganganBisepKanan.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:30,),

            
          (_counter > 0)
            ? Text(""):Text( 
              "Selesai",
              style: TextStyle(color: Colors.green,
              fontWeight: FontWeight.bold, fontSize: 20),
            ),
        
          

            Text('$_counter', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),

            RaisedButton(onPressed: () => _startTimer(),
            child: Text("Mula" , style: TextStyle(fontSize: 30),),
            ),

            RaisedButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganTahniahLanjutan(), ));


            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganLanjutan(), ));

            },
            child: Text("Laman Lengan Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
