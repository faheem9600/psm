import 'package:appsatb/SenamanPage/Pemula/DadaPemulaSedia.dart';
import 'package:appsatb/SenamanPage/PemulaPage.dart';
import 'package:flutter/material.dart';


class DadaPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyDadaPemula(),
    );
  }
}

class MyDadaPemula extends StatefulWidget {
  @override
  _MyDadaPemulaState createState() => _MyDadaPemulaState();
}

class _MyDadaPemulaState extends State<MyDadaPemula> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Dada Pemula'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          
          Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => PemulaPage(), ));
      

        }),),
      body: BodyLayout(),
      
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}
Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/LompatBintang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('1. Lompat Bintang'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatBintangDialog(
            title: "Lompat Bintang",
            description:"Mulai dari posisi bediri dengan kaki rapat, lalu "
            "lompat dengan kaki terbuka dan telapak tangan bersentuhan di atas kepala."
            "Kembali ke posisi awal dan lakukan babak berikutnya."
            "Latihan ini memberikan olahraga seluruh tubuh dan menggerakkan semua"
            "kelompok otot besar anda.",
          ));

        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpDiatasBangku.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('2. Push Up Tangan Di Atas Bangku'),
        subtitle: Text('x 16'),
         onTap: () {

           showDialog(context: context, builder: (context) => PushUpTanganBangkuDialog(
            title: "Push Up Tangan Di Atas Bangku",
            description:"Mulai dari posisi push up seperti biasa, namun dengan meletakkan tangan di atas kerusi atau bangku."
            "Kemudian dorongkan badan Anda naik dan turun dengan kekuatan tangan Anda. Pastikan tubuh Anda tetap lurus."
            ,
          ));

          
        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpLutut.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('3. Push Up Lutut'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => PushUpLututDialog(
            title: "Push Up Lutut",
            description:"Mulai dari posisi push up seperti biasa dengan lutut menyentuh lantai, dan telapak kaki diangkat."
            "Kemudian dorongkan badan Anda naik dan turun."
            ,
          ));
        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUp.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Push Up'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpDialog(
            title: "Push Up",
            description:"Berbaring di lantai dengan lengan menumpu ke tubuh Anda."
            "Jaga tubuh Anda tetap lurus ketika mengangkat dan menurunkan tubuh Anda dengan tangan."
            "Latihan ini melatih dada, bahu, otot trisep, punggung dan kaki"
            ,
          ));

        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpTanganMelebar.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Push Up Tangan Melebar'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpTanganMelebarDialog(
            title: "Push Up Tangan Melebar",
            description:"Mulai dengan posisi push up seperti biasanya, tetapi dengan posisi tangan lebih lebar dari bahu Anda."
            "Kemudian dorongkan bdan Anda naik dan turun. Pastikan tubuh Anda tetap lurus."
           
            ,
          ));


        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpDiatasBangku.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Push Up Tangan Di Atas Bangku'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpTanganBangkuDialog(
            title: "Push Up Tangan Di Atas Bangku",
            description:"Mulai dari posisi push up seperti biasa, namun dengan meletakkan tangan di atas kerusi atau bangku."
            "Kemudian dorongkan badan Anda naik dan turun dengan kekuatan tangan Anda. Pastikan tubuh Anda tetap lurus."
            ,
          ));


        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpDitekuk.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Push Up Kaki Ditekuk'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpKakiDitekukDialog(
            title: "Push Up Kaki Ditekuk",
            description:"Mulai dari posisi merangkak dengan lutut ditekuk di bawah bokong dan tangan lurus dengan bahu."
            "Tekuk siku Anda dan lakukan gerakan push up. Kemudian, kembali ke posisi asal dan ulang semula."
            ,
          ));

        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpTanganMelebar.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Push Up Tangan Melebar'),
        subtitle: Text('x 10'),
        onTap: () {
           showDialog(context: context, builder: (context) => PushUpTanganMelebarDialog(
            title: "Push Up Tangan Melebar",
            description:"Mulai dengan posisi push up seperti biasanya, tetapi dengan posisi tangan lebih lebar dari bahu Anda."
            "Kemudian dorongkan bdan Anda naik dan turun. Pastikan tubuh Anda tetap lurus."
           
            ,
          ));


        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpHindu.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Push Up Hindu'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpHinduDialog(
            title: "Push Up Hindu",
            description:"Mulai dengan tangan dan kaki menyentuh lantai, sedangkan pinggul ditekuk ke atas. Seperti huruf 'V' terbalik. "
            "Kemudian, tekuk siku Anda sehingga badan Anda menghadap ke lantai. Ketika badan Anda mendekati lantai,"
            "angkat badan bahagian atas sejauh mungkin. "
           
            ,
          ));

        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganKobra.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Peregangan Kobra'),
        subtitle: Text('00:20'),
        onTap: () {


          showDialog(context: context, builder: (context) => PereganganKobraDialog(
            title: "Peregangan Kobra",
            description:"Berbaring telungkup dan tekukan kedua siku dengan telapak tangan di bawah bahu."
            "Kemudian, dorongkan dada naik dari lantai sejauh mungkin. Tahan posisi ini selama beberapa detik."
            
            
          ));

        },
      ),
      ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganDada.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Peregangan Dada'),
        subtitle: Text('00:20'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganDadaDialog(
            title: "Peregangan Dada",
            description:"Cari ambang pintu. Ambil posisi terjang di ambang pintu dengan kedua lengan di kosen dan siku d=sedikit lebih rendah"
            "dati bahu, lalu perlahan lahan majukan dada."
            "Tahan posisi ini selama beberapa 30 hingga 40 detik. Kemudian perlahan lahan lepaskan posisi ini,"
            "turunkan lengan dan lakukan beberapa putaran bahu."
            
            
          ));


        },
      ),
      ButtonTheme(
        minWidth: 100,
        height: 70,
      child: RaisedButton(
        child:Text('Mulakan Senaman'),
        color: Colors.lightBlueAccent,
        onPressed: (){

           Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => DadaPemulaSedia(), ));

      }))
    ],
  );
}

class LompatBintangDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  LompatBintangDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/LompatBintang.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpTanganBangkuDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpTanganBangkuDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpDiatasBangku.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpLututDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpLututDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpLutut.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUp.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpTanganMelebarDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpTanganMelebarDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpTanganMelebar.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpKakiDitekukDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpKakiDitekukDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpDitekuk.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpHinduDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpHinduDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpHindu.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganKobraDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganKobraDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganKobra.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganDadaDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganDadaDialog({this.title, this.description, this.buttonText, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container( 
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16, 
          ),
          margin: EdgeInsets.only(top:16),
          decoration: BoxDecoration(color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset( 0.0 , 10.0),

            )
          ]
          ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Text(
              title,
              style: TextStyle(  
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              )
            ),
            SizedBox(height: 16.0),
            Text(description, style: TextStyle(fontSize: 16.0)),
            SizedBox(height:24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(onPressed:(){
                Navigator.pop(context);
              },
              child: Text("Tutup"),)
            )
          ]
        ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganDada.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}












