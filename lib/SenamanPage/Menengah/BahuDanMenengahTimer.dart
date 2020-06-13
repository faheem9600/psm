import 'package:appsatb/SenamanPage/Menengah/BahuDanMenTahniah.dart';
import 'package:appsatb/SenamanPage/Menengah/BahuDanMenengah.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LompatBintangMenengah extends StatelessWidget {
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
      appBar: AppBar(title: Text("Bahu Dan Punggung Menengah"),
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
                  builder:(context) => EkstensiTrisepMembungkukMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class EkstensiTrisepMembungkukMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new EkstensiTrisepMembungkuk(),
    );
  }
}


class EkstensiTrisepMembungkuk extends StatefulWidget {
  @override
  _EkstensiTrisepMembungkukState createState() => _EkstensiTrisepMembungkukState();
}

class _EkstensiTrisepMembungkukState extends State<EkstensiTrisepMembungkuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Ekstensi Trisep Membungkuk" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/Ekstensi.gif',
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
                  builder:(context) => PushUpTanganDiAtasBangkuMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpTanganDiAtasBangkuMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpTanganDiAtasBangku(),
    );
  }
}


class PushUpTanganDiAtasBangku extends StatefulWidget {
  @override
  _PushUpTanganDiAtasBangkuState createState() => _PushUpTanganDiAtasBangkuState();
}

class _PushUpTanganDiAtasBangkuState extends State<PushUpTanganDiAtasBangku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Tangan Di Atas Bangku" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpDiatasBangku.gif',
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
                  builder:(context) => TarikanRomboidMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class TarikanRomboidMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new TarikanRomboid(),
    );
  }
}


class TarikanRomboid extends StatefulWidget {
  @override
  _TarikanRomboidState createState() => _TarikanRomboidState();
}

class _TarikanRomboidState extends State<TarikanRomboid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Tarikan Romboid" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/TarikanRomboid.gif',
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
                  builder:(context) => AngkatTrisepDiLantaiMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class AngkatTrisepDiLantaiMenengah extends StatelessWidget {
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
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
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

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => SikapKucingSapiMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class SikapKucingSapiMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SikapKucingSapi(),
    );
  }
}


class SikapKucingSapi extends StatefulWidget {
  SikapKucingSapi({Key key}) : super(key: key);

  @override
  _SikapKucingSapiState createState() => _SikapKucingSapiState();
}

class _SikapKucingSapiState extends State<SikapKucingSapi> {
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
      appBar: AppBar(title: Text("Bahu Dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Sikap Kucing Sapi" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/SikapKucing.gif',
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
                  builder:(context) => EkstensiTrisepMembungkuk2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class EkstensiTrisepMembungkuk2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new EkstensiTrisepMembungkuk2(),
    );
  }
}


class EkstensiTrisepMembungkuk2 extends StatefulWidget {
  @override
  _EkstensiTrisepMembungkuk2State createState() => _EkstensiTrisepMembungkuk2State();
}

class _EkstensiTrisepMembungkuk2State extends State<EkstensiTrisepMembungkuk2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Ekstensi Trisep Membungkuk" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/Ekstensi.gif',
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
                  builder:(context) => PushUpTanganDiAtasBangku2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpTanganDiAtasBangku2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpTanganDiAtasBangku2(),
    );
  }
}


class PushUpTanganDiAtasBangku2 extends StatefulWidget {
  @override
  _PushUpTanganDiAtasBangku2State createState() => _PushUpTanganDiAtasBangku2State();
}

class _PushUpTanganDiAtasBangku2State extends State<PushUpTanganDiAtasBangku2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Tangan Di Atas Bangku" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpDiatasBangku.gif',
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
                  builder:(context) => EngselPinggulMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class EngselPinggulMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new EngselPinggul(),
    );
  }
}


class EngselPinggul extends StatefulWidget {
  @override
  _EngselPinggulState createState() => _EngselPinggulState();
}

class _EngselPinggulState extends State<EngselPinggul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Engsel Pinggul" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/EngselPinggul.gif',
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
                  builder:(context) => AngkatTrisepDiLantai2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class AngkatTrisepDiLantai2Menengah extends StatelessWidget {
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
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
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

            
    
            Text('X 14', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PereganganLantaiBerbaringMengiringKiriMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganLantaiBerbaringMengiringKiriMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganLantaiBerbaringMengiringKiri(),
    );
  }
}


class PereganganLantaiBerbaringMengiringKiri extends StatefulWidget {
  PereganganLantaiBerbaringMengiringKiri({Key key}) : super(key: key);

  @override
  _PereganganLantaiBerbaringMengiringKiriState createState() => _PereganganLantaiBerbaringMengiringKiriState();
}

class _PereganganLantaiBerbaringMengiringKiriState extends State<PereganganLantaiBerbaringMengiringKiri> {
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
      appBar: AppBar(title: Text("Bahu Dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Lantai Berbaring Mengiring Kiri" ,style: TextStyle(fontSize: 15,
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
              child: new Image.asset('images/PereganganLantaiKiri.gif',
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
                  builder:(context) => PereganganLantaiBerbaringMengiringKananMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganLantaiBerbaringMengiringKananMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganLantaiBerbaringMengiringKanan(),
    );
  }
}


class PereganganLantaiBerbaringMengiringKanan extends StatefulWidget {
  PereganganLantaiBerbaringMengiringKanan({Key key}) : super(key: key);

  @override
  _PereganganLantaiBerbaringMengiringKananState createState() => _PereganganLantaiBerbaringMengiringKananState();
}

class _PereganganLantaiBerbaringMengiringKananState extends State<PereganganLantaiBerbaringMengiringKanan> {
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
      appBar: AppBar(title: Text("Bahu Dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Lantai Berbaring Mengiring Kanan" ,style: TextStyle(fontSize: 15,
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
              child: new Image.asset('images/PereganganLantaiKanan.gif',
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
                  builder:(context) => PushUpMelayangMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpMelayangMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpMelayang(),
    );
  }
}


class PushUpMelayang extends StatefulWidget {
  @override
  _PushUpMelayangState createState() => _PushUpMelayangState();
}

class _PushUpMelayangState extends State<PushUpMelayang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Melayang" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpMelayang.gif',
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
                  builder:(context) => SupermanDanPerenangMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class SupermanDanPerenangMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SupermanDanPerenang(),
    );
  }
}


class SupermanDanPerenang extends StatefulWidget {
  @override
  _SupermanDanPerenangState createState() => _SupermanDanPerenangState();
}

class _SupermanDanPerenangState extends State<SupermanDanPerenang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Superman Dan Perenang" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/Superman.gif',
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
                  builder:(context) => SupermanDanPerenang2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class SupermanDanPerenang2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SupermanDanPerenang2(),
    );
  }
}


class SupermanDanPerenang2 extends StatefulWidget {
  @override
  _SupermanDanPerenang2State createState() => _SupermanDanPerenang2State();
}

class _SupermanDanPerenang2State extends State<SupermanDanPerenang2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Superman Dan Perenang" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/Superman.gif',
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
                  builder:(context) => PushUpMelayang2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpMelayang2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpMelayang2(),
    );
  }
}


class PushUpMelayang2 extends StatefulWidget {
  @override
  _PushUpMelayang2State createState() => _PushUpMelayang2State();
}

class _PushUpMelayang2State extends State<PushUpMelayang2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bahu dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Melayang" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpMelayang.gif',
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
                  builder:(context) => SikapAnakMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class SikapAnakMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SikapAnak(),
    );
  }
}


class SikapAnak extends StatefulWidget {
  SikapAnak({Key key}) : super(key: key);

  @override
  _SikapAnakState createState() => _SikapAnakState();
}

class _SikapAnakState extends State<SikapAnak> {
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
      appBar: AppBar(title: Text("Bahu Dan Punggung Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Sikap Anak" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/SikapAnak.gif',
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
                  builder:(context) => BahuDanTahniahMenengah(), ));
            

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => BahuDanMenengah(), ));

            },
            child: Text("Laman Bahu dan Punggung Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


