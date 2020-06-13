import 'package:appsatb/SenamanPage/Lanjutan/DadaLanjutan.dart';
import 'package:appsatb/SenamanPage/Lanjutan/DadaLanjutanTahniah.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LompatBintangLanjutan extends StatelessWidget {
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
      appBar: AppBar(title: Text("Dada Lanjutan"),
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
                  builder:(context) => LingkarLenganLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class LingkarLenganLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LingkarLengan(),
    );
  }
}


class LingkarLengan extends StatefulWidget {
  @override
  _LingkarLenganState createState() => _LingkarLenganState();
}

class _LingkarLenganState extends State<LingkarLengan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Lingkar Lengan" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/LingkarLengan.gif',
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
                  builder:(context) => PereganganBahuLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganBahuLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganBahu(),
    );
  }
}


class PereganganBahu extends StatefulWidget {
  PereganganBahu({Key key}) : super(key: key);

  @override
  _PereganganBahuState createState() => _PereganganBahuState();
}

class _PereganganBahuState extends State<PereganganBahu> {
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
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Bahu" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PereganganBahu.gif',
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
                  builder:(context) => BurpeeLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),

            
            
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
      appBar: AppBar(title: Text("Dada Lanjutan"),
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

            
    
            Text('X 10', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PushUpLenganDiagonalLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpLenganDiagonalLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpLenganDiagonal(),
    );
  }
}


class PushUpLenganDiagonal extends StatefulWidget {
  @override
  _PushUpLenganDiagonalState createState() => _PushUpLenganDiagonalState();
}

class _PushUpLenganDiagonalState extends State<PushUpLenganDiagonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Lengan Diagonal" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpLenganDiagonal.gif',
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
                  builder:(context) => PushUpHinduLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpHinduLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpHindu(),
    );
  }
}


class PushUpHindu extends StatefulWidget {
  @override
  _PushUpHinduState createState() => _PushUpHinduState();
}

class _PushUpHinduState extends State<PushUpHindu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Hindu" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpHindu.gif',
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
                  builder:(context) => PushUpDanPusinganLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



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
      appBar: AppBar(title: Text("Dada Lanjutan"),
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
                  builder:(context) => PushUpBerlianLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpBerlianLanjutan extends StatelessWidget {
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
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Berlian" ,style: TextStyle(fontSize: 30,
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

            
    
            Text('X 16', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PushUpKakiDitekukLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpKakiDitekukLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpKakiDitekuk(),
    );
  }
}


class PushUpKakiDitekuk extends StatefulWidget {
  @override
  _PushUpKakiDitekukState createState() => _PushUpKakiDitekukState();
}

class _PushUpKakiDitekukState extends State<PushUpKakiDitekuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Kaki Ditekuk" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpDitekuk.gif',
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
                  builder:(context) => PushUpHindu2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpHindu2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpHindu2(),
    );
  }
}


class PushUpHindu2 extends StatefulWidget {
  @override
  _PushUpHindu2State createState() => _PushUpHindu2State();
}

class _PushUpHindu2State extends State<PushUpHindu2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Hindu" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpHindu.gif',
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
                  builder:(context) => PushUpSpidermanLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PushUpSpidermanLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpSpiderman(),
    );
  }
}


class PushUpSpiderman extends StatefulWidget {
  @override
  _PushUpSpidermanState createState() => _PushUpSpidermanState();
}

class _PushUpSpidermanState extends State<PushUpSpiderman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Spiderman" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpSpiderman.gif',
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
                  builder:(context) => PushUpKakiDiAtasBangkuLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PushUpKakiDiAtasBangkuLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PushUpKakiDiAtasBangku(),
    );
  }
}


class PushUpKakiDiAtasBangku extends StatefulWidget {
  @override
  _PushUpKakiDiAtasBangkuState createState() => _PushUpKakiDiAtasBangkuState();
}

class _PushUpKakiDiAtasBangkuState extends State<PushUpKakiDiAtasBangku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Push Up Kaki Di Atas Bangku" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PushUpKBangku.gif',
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
                  builder:(context) => Burpee2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



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
      appBar: AppBar(title: Text("Dada Lanjutan"),
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

            
    
            Text('X 10', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),),

      
            RaisedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PereganganBahu2Lanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),



        ],) ,),
      
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganBahu2Lanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganBahu2(),
    );
  }
}


class PereganganBahu2 extends StatefulWidget {
  PereganganBahu2({Key key}) : super(key: key);

  @override
  _PereganganBahu2State createState() => _PereganganBahu2State();
}

class _PereganganBahu2State extends State<PereganganBahu2> {
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
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Bahu" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PereganganBahu.gif',
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
                  builder:(context) => PereganganKobraLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class PereganganKobraLanjutan extends StatelessWidget {
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
      appBar: AppBar(title: Text("Dada Lanjutan"),
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
                  builder:(context) => PereganganDadaLanjutan(), ));

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class PereganganDadaLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new PereganganDada(),
    );
  }
}


class PereganganDada extends StatefulWidget {
  PereganganDada({Key key}) : super(key: key);

  @override
  _PereganganDadaState createState() => _PereganganDadaState();
}

class _PereganganDadaState extends State<PereganganDada> {
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
      appBar: AppBar(title: Text("Dada Lanjutan"),
      ),
      body: Center(
        child: Column( 
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        child: Text("Peregangan Dada" ,style: TextStyle(fontSize: 30,
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
              child: new Image.asset('images/PereganganDada.gif',
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
                  builder:(context) => DadaTahniahLanjutan(), ));

            

            },
            child: Text("Senaman seterusnya"),),

            RaisedButton(onPressed: (){

               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaLanjutan(), ));

            },
            child: Text("Laman Dada Lanjutan"),),

            
            
        ],) ,),
      
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
