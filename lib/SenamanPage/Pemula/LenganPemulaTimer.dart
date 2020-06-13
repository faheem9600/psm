import 'package:appsatb/SenamanPage/Pemula/LenganPemula.dart';
import 'package:appsatb/SenamanPage/Pemula/LenganPemulaTahniah.dart';
import 'package:flutter/material.dart';
import 'dart:async';



class AngkatTanganSambilBerdiriPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new AngkatTanganSambilBerdiri(),
    );
  }
}


class AngkatTanganSambilBerdiri extends StatefulWidget {
  AngkatTanganSambilBerdiri({Key key}) : super(key: key);

  @override
  _AngkatTanganSambilBerdiriState createState() => _AngkatTanganSambilBerdiriState();
}

class _AngkatTanganSambilBerdiriState extends State<AngkatTanganSambilBerdiri> {
  int _counter = 20;
  Timer _timer;

  void _startTimer() {
    _counter = 20;
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
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Angkat Tangan Sambil Berdiri" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/AngkatTangan.gif',
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
                  builder:(context) => AngkatLenganKeSampingPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class AngkatLenganKeSampingPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new AngkatAngkatLenganKeSamping(),
    );
  }
}


class AngkatAngkatLenganKeSamping extends StatefulWidget {
  AngkatAngkatLenganKeSamping({Key key}) : super(key: key);

  @override
  _AngkatAngkatLenganKeSampingState createState() => _AngkatAngkatLenganKeSampingState();
}

class _AngkatAngkatLenganKeSampingState extends State<AngkatAngkatLenganKeSamping> {
  int _counter = 20;
  Timer _timer;

  void _startTimer() {
    _counter = 20;
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
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Angkat Angkat Lengan Ke Samping" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/AngkatLengan.gif',
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
                  builder:(context) =>TricipDipLatihanPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class TricipDipLatihanPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new TricipDip(),
    );
  }
}


class TricipDip extends StatefulWidget {
  @override
  _TricipDipState createState() => _TricipDipState();
}

class _TricipDipState extends State<TricipDip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Tricip Dip" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/TricipDip.gif',
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
                  builder:(context) => PutarLenganSearahJarumJamPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PutarLenganSearahJarumJamPemula extends StatelessWidget {
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
  int _counter = 20;
  Timer _timer;

  void _startTimer() {
    _counter = 20;
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
      appBar: AppBar(title: Text("Lengan Pemula"),
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
                  builder:(context) => PutarLenganBerlawananArahJarumJamPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PutarLenganBerlawananArahJarumJamPemula extends StatelessWidget {
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
  int _counter = 20;
  Timer _timer;

  void _startTimer() {
    _counter = 20;
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
      appBar: AppBar(title: Text("Lengan Pemula"),
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
              child: new Image.asset('images/PutarLenganLawanJam.gif',
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
                  builder:(context) => PushUpBerlianPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpBerlianPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpBerlian(),
    );
  }
}


class PushUpBerlian extends StatefulWidget {
  @override
  _PushUpBerlianState createState() => _PushUpBerlianState();
}

class _PushUpBerlianState extends State<PushUpBerlian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("PushUp Berlian" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpBerlian.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 6', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LompatBintangPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class LompatBintangPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LompatBintang(),
    );
  }
}


class LompatBintang extends StatefulWidget {
  LompatBintang({Key key}) : super(key: key);

  @override
  _LompatBintangState createState() => _LompatBintangState();
}

class _LompatBintangState extends State<LompatBintang> {
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
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Lompat Bintang" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/LompatBintang.gif',
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
                  builder:(context) =>TekanLenganDiDepanDadaPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class TekanLenganDiDepanDadaPemula extends StatelessWidget {
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
  int _counter = 16;
  Timer _timer;

  void _startTimer() {
    _counter = 16;
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
      appBar: AppBar(title: Text("Lengan Pemula"),
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
                  builder:(context) =>CurlBarbelKiriPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class CurlBarbelKiriPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CurlBarbelKiri(),
    );
  }
}


class CurlBarbelKiri extends StatefulWidget {
  @override
  _CurlBarbelKiriState createState() => _CurlBarbelKiriState();
}

class _CurlBarbelKiriState extends State<CurlBarbelKiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
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

            
    
            Text('X 8', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CurlBarbelKananPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class CurlBarbelKananPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CurlBarbelKanan(),
    );
  }
}


class CurlBarbelKanan extends StatefulWidget {
  @override
  _CurlBarbelKananState createState() => _CurlBarbelKananState();
}

class _CurlBarbelKananState extends State<CurlBarbelKanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
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

            
    
            Text('X 8', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DiagonalPlankPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class DiagonalPlankPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new DiagonalPlank(),
    );
  }
}


class DiagonalPlank extends StatefulWidget {
  @override
  _DiagonalPlankState createState() => _DiagonalPlankState();
}

class _DiagonalPlankState extends State<DiagonalPlank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Diagonal Plank" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PlankDiagonal.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 10', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MeninjuPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class MeninjuPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Meninju(),
    );
  }
}


class Meninju extends StatefulWidget {
  Meninju({Key key}) : super(key: key);

  @override
  _MeninjuState createState() => _MeninjuState();
}

class _MeninjuState extends State<Meninju> {
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
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Meninju" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/Meninju.gif',
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
                  builder:(context) =>PushUpPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUp(),
    );
  }
}


class PushUp extends StatefulWidget {
  @override
  _PushUpState createState() => _PushUpState();
}

class _PushUpState extends State<PushUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUp.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 10', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => InchwormsPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class InchwormsPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Inchworms(),
    );
  }
}


class Inchworms extends StatefulWidget {
  @override
  _InchwormsState createState() => _InchwormsState();
}

class _InchwormsState extends State<Inchworms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Inchworms" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/Inchworms.gif',
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
                  builder:(context) => PushUpDindingPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpDindingPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpDinding(),
    );
  }
}


class PushUpDinding extends StatefulWidget {
  @override
  _PushUpDindingState createState() => _PushUpDindingState();
}

class _PushUpDindingState extends State<PushUpDinding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lengan Pemula"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Dinding" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpDinding.gif',
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
                  builder:(context) => PereganganTrisepKiriPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganTrisepKiriPemula extends StatelessWidget {
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
      appBar: AppBar(title: Text("Lengan Pemula"),
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
                  builder:(context) =>PereganganTrisepKananPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



class PereganganTrisepKananPemula extends StatelessWidget {
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
      appBar: AppBar(title: Text("Lengan Pemula"),
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
                  builder:(context) =>PereganganBisepBerdiriKiriPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganBisepBerdiriKiriPemula extends StatelessWidget {
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
      appBar: AppBar(title: Text("Lengan Pemula"),
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
                  builder:(context) =>PereganganBisepBerdiriKananPemula(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganBisepBerdiriKananPemula extends StatelessWidget {
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
      appBar: AppBar(title: Text("Lengan Pemula"),
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
                  builder:(context) => LenganTahniahPemula(), ));
               

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LenganPemula(), ));

            },
            child: Text("Laman Lengan Pemula"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

