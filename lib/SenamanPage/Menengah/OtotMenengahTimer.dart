import 'package:appsatb/SenamanPage/Menengah/OtotPerutMenengah.dart';
import 'package:appsatb/SenamanPage/Menengah/OtotPerutTahniah.dart';
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
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
                  builder:(context) => SentuhTumitMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class SentuhTumitMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SentuhTumit(),
    );
  }
}


class SentuhTumit extends StatefulWidget {
  @override
  _SentuhTumitState createState() => _SentuhTumitState();
}

class _SentuhTumitState extends State<SentuhTumit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Sentuh Tumit" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/SentuhTumit.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 26', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => SitUpSilangMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class SitUpSilangMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SitUpSilang(),
    );
  }
}


class SitUpSilang extends StatefulWidget {
  @override
  _SitUpSilangState createState() => _SitUpSilangState();
}

class _SitUpSilangState extends State<SitUpSilang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Sit Up Silang" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/SitUpSilang.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PendakiGunungMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PendakiGunungMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PendakiGunung(),
    );
  }
}


class PendakiGunung extends StatefulWidget {
  @override
  _PendakiGunungState createState() => _PendakiGunungState();
}

class _PendakiGunungState extends State<PendakiGunung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Pendaki Gunung" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PendakiGunung.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PapanMenyampinngKiriMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PapanMenyampinngKiriMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PapanMenyampinngKiri(),
    );
  }
}


class PapanMenyampinngKiri extends StatefulWidget {
  @override
  _PapanMenyampinngKiriState createState() => _PapanMenyampinngKiriState();
}

class _PapanMenyampinngKiriState extends State<PapanMenyampinngKiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Papan Menyampinng Kiri" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PapanMenyampingKiri.gif',
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
                  builder:(context) => PapanMenyampinngKananMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PapanMenyampinngKananMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PapanMenyampinngKanan(),
    );
  }
}


class PapanMenyampinngKanan extends StatefulWidget {
  @override
  _PapanMenyampinngKananState createState() => _PapanMenyampinngKananState();
}

class _PapanMenyampinngKananState extends State<PapanMenyampinngKanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Papan Menyampinng Kanan" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PapanMenyampingKanan.gif',
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
                  builder:(context) => JambatanBokongMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class JambatanBokongMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new JambatanBokong(),
    );
  }
}


class JambatanBokong extends StatefulWidget {
  @override
  _JambatanBokongState createState() => _JambatanBokongState();
}

class _JambatanBokongState extends State<JambatanBokong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Jambatan Bokong" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/JambatanBokong.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CrunchSepedaMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class CrunchSepedaMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CrunchSepeda(),
    );
  }
}


class CrunchSepeda extends StatefulWidget {
  @override
  _CrunchSepedaState createState() => _CrunchSepedaState();
}

class _CrunchSepedaState extends State<CrunchSepeda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Crunch Sepeda" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/CrunchSepeda.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => SitUpVMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class SitUpVMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SitUpV(),
    );
  }
}


class SitUpV extends StatefulWidget {
  @override
  _SitUpVState createState() => _SitUpVState();
}

class _SitUpVState extends State<SitUpV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Sit Up V" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/SitUpV.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => SentuhTumit2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class SentuhTumit2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SentuhTumit2(),
    );
  }
}


class SentuhTumit2 extends StatefulWidget {
  @override
  _SentuhTumit2State createState() => _SentuhTumit2State();
}

class _SentuhTumit2State extends State<SentuhTumit2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Sentuh Tumit" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/SentuhTumit.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 26', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CrunchPerutMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class CrunchPerutMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CrunchPerut(),
    );
  }
}


class CrunchPerut extends StatefulWidget {
  @override
  _CrunchPerutState createState() => _CrunchPerutState();
}

class _CrunchPerutState extends State<CrunchPerut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Crunch Perut" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/CrunchPerut.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PlankMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PlankMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Plank(),
    );
  }
}


class Plank extends StatefulWidget {
  Plank({Key key}) : super(key: key);

  @override
  _PlankState createState() => _PlankState();
}

class _PlankState extends State<Plank> {
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Plank" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/Plank.gif',
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
                  builder:(context) => SitUpSilang2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class SitUpSilang2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SitUpSilang2(),
    );
  }
}


class SitUpSilang2 extends StatefulWidget {
  @override
  _SitUpSilang2State createState() => _SitUpSilang2State();
}

class _SitUpSilang2State extends State<SitUpSilang2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Sit Up Silang" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/SitUpSilang.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => AngkatKakiMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class AngkatKakiMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new AngkatKaki(),
    );
  }
}


class AngkatKaki extends StatefulWidget {
  @override
  _AngkatKakiState createState() => _AngkatKakiState();
}

class _AngkatKakiState extends State<AngkatKaki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Angkat Kaki" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/AngkatKaki.gif',
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
                  builder:(context) => CrunchSepeda2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class CrunchSepeda2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new CrunchSepeda2(),
    );
  }
}


class CrunchSepeda2 extends StatefulWidget {
  @override
  _CrunchSepeda2State createState() => _CrunchSepeda2State();
}

class _CrunchSepeda2State extends State<CrunchSepeda2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Crunch Sepeda" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/CrunchSepeda.gif',
              fit: BoxFit.contain,),
              )
          ),
          radius: 90,
        ) 
        ),

        SizedBox(height:50,),

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PushUpDanPusinganMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpDanPusinganMenengah extends StatelessWidget {
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
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

            
    
            Text('X 20', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => KananPlankSisiMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class KananPlankSisiMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new KananPlankSisi(),
    );
  }
}


class KananPlankSisi extends StatefulWidget {
  KananPlankSisi({Key key}) : super(key: key);

  @override
  _KananPlankSisiState createState() => _KananPlankSisiState();
}

class _KananPlankSisiState extends State<KananPlankSisi> {
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Kanan Plank Sisi" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/KananPlankSisi.gif',
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
                  builder:(context) => KananPlankSisi2Menengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class KananPlankSisi2Menengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new KananPlankSisi2(),
    );
  }
}


class KananPlankSisi2 extends StatefulWidget {
  KananPlankSisi2({Key key}) : super(key: key);

  @override
  _KananPlankSisi2State createState() => _KananPlankSisi2State();
}

class _KananPlankSisi2State extends State<KananPlankSisi2> {
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Kanan Plank Sisi" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/KananPlankSisi.gif',
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
                  builder:(context) => PereganganKobraMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganKobraMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganKobra(),
    );
  }
}


class PereganganKobra extends StatefulWidget {
  PereganganKobra({Key key}) : super(key: key);

  @override
  _PereganganKobraState createState() => _PereganganKobraState();
}

class _PereganganKobraState extends State<PereganganKobra> {
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Kobra" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PereganganKobra.gif',
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
                  builder:(context) => PereganganPutarLumbarBelakangKiriMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganPutarLumbarBelakangKiriMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganPutarLumbarBelakangKiri(),
    );
  }
}


class PereganganPutarLumbarBelakangKiri extends StatefulWidget {
  PereganganPutarLumbarBelakangKiri({Key key}) : super(key: key);

  @override
  _PereganganPutarLumbarBelakangKiriState createState() => _PereganganPutarLumbarBelakangKiriState();
}

class _PereganganPutarLumbarBelakangKiriState extends State<PereganganPutarLumbarBelakangKiri> {
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Putar Lumbar Belakang Kiri" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/ppbkiri.gif',
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
                  builder:(context) => PereganganPutarLumbarBelakangKananMenengah(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganPutarLumbarBelakangKananMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganPutarLumbarBelakangKanan(),
    );
  }
}


class PereganganPutarLumbarBelakangKanan extends StatefulWidget {
  PereganganPutarLumbarBelakangKanan({Key key}) : super(key: key);

  @override
  _PereganganPutarLumbarBelakangKananState createState() => _PereganganPutarLumbarBelakangKananState();
}

class _PereganganPutarLumbarBelakangKananState extends State<PereganganPutarLumbarBelakangKanan> {
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
      appBar: AppBar(title: Text("Otot Perut Menengah"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Putar Lumbar Belakang Kanan" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/ppbkanan.gif',
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
                  builder:(context) => OtotPerutTahniahMenengah(), ));
             

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => OtotPerutMenengah(), ));

            },
            child: Text("Laman Otot Perut Menengah"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

