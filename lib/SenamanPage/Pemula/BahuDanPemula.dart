import 'package:appsatb/SenamanPage/Pemula/BahuDanSedia.dart';
import 'package:appsatb/SenamanPage/PemulaPage.dart';
import 'package:flutter/material.dart';

class BahuDanPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyBahuDanPemula(),
    );
  }
}

class MyBahuDanPemula extends StatefulWidget {
  @override
  _MyBahuDanPemulaState createState() => _MyBahuDanPemulaState();
}

class _MyBahuDanPemulaState extends State<MyBahuDanPemula> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Bahu Dan Punggung Pemula'),
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
        title: Text('Lompat Bintang'),
        subtitle: Text('00:30'),
        onTap: () {

              showDialog(context: context, builder: (context) => LompatBintangDialog(
            title: "1. Lompat Bintang",
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
              child: new Image.asset('images/AngkatTangan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('2. Angkat Tangan Sambil Berdiri'),
        subtitle: Text('x 16'),
         onTap: () {

            showDialog(context: context, builder: (context) => AngkatTanganSambilBerdiriDialog(
            title: "Angkat Tangan Sambil Berdiri",
            description:"Berdiri di lantai dengan merentangkan kedua tangan sejajar dengan bahu."
            "Angkat kedua tangan ke atas kepala. Kembali ke posisi semula dan ulang semula"
          
          ));

          
        },
      ),
      ListTile(
        leading:  CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/TarikanRomboid.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('3. Tarikan Romboid'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => TarikanRomboidDialog(
            title: "Tarikan Romboid",
            description:"Berdiri dengan kaki selebar bahu."
            "Angkat kedua lengan sampai sejajar dengan lantai, dan tekukkan kedua siku. Tarik kedua siku ke belakang dan kencangkan kedua tulang belikat"
            "Ulangi semula senaman ini."
          
          ));

        },
      ),
      ListTile(
        leading:CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/AngkatLengan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Angkat Lengan Ke Samping'),
        subtitle: Text('x 16'),
        onTap: () {

      showDialog(context: context, builder: (context) => ALKSDialog(
            title: "Angkat Lengan ke Samping",
            description:"Berdiri di lantai dengan kaki selebar bahu."
            "Angkat kedua lengan ke samping setinggi bahu, lalu turunkan. Ulangi latihannya."
            
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
        title: Text('5. Push Up Lutut'),
        subtitle: Text('x 14'),
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
        leading:  CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganLantaiKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Peregangan Lantai Berbaring Mengiring Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLantaiBerbaringMengiringKiriDialog(
            title: "Peregangan Lantai Berbaring Mengiring Kiri",
            description:"Berbaring mengiring ke kanan dengan lutut kanan sedikit ditekuk ke depan dan kaki kiri diregangkanke belakang kaki kanan."
            "Luruskan lengan kiri ke atas kepala dan perlahan tarik pergelangantangan kiri untuk meregangkan sisi kiri tubuh."
            "Tahan posisi ini selama beberapa detik."
            ,
          ));

        },
      ),
      ListTile(
        leading:  CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganLantaiKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Peregangan Lantai Berbaring Mengiring Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLantaiBerbaringMengiringKananDialog(
            title: "Peregangan Lantai Berbaring Mengiring Kanan",
            description:"Berbaring mengiring ke kiri dengan lutut kiri sedikit ditekuk ke depan dan kaki kanan diregangkan ke belakang kaki kiri."
            "Luruskan lengan kanan ke atas kepala dan perlahan tarik pergelangan tangan kanan untuk meregangkan sisi kanan tubuh."
            "Tahan posisi ini selama beberapa detik."
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
              child: new Image.asset('images/GuntingLengan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Gunting Lengan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => GuntingLenganDialog(
            title: "Gunting Lengan",
            description:"Berdiri tegak dengan kaki selebar bahu."
            "Luruskan kedua lengan ke depan setinggi bahu saling bersilangan membentuk huruf 'X', lalu lebarkan kedua lengan saling menjauh."
            "Tukar posisi lengan, dan ulangi latihannya"
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
              child: new Image.asset('images/TarikanRomboid.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Tarikan Romboid'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => TarikanRomboidDialog(
            title: "Tarikan Romboid",
            description:"Berdiri dengan kaki selebar bahu."
            "Angkat kedua lengan sampai sejajar dengan lantai, dan tekukkan kedua siku. Tarik kedua siku ke belakang dan kencangkan kedua tulang belikat"
            "Ulangi semula senaman ini."
          
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
              child: new Image.asset('images/AngkatLengan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Angkat Lengan Ke Samping'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => ALKSDialog(
            title: "Angkat Lengan ke Samping",
            description:"Berdiri di lantai dengan kaki selebar bahu."
            "Angkat kedua lengan ke samping setinggi bahu, lalu turunkan. Ulangi latihannya."
            
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
        title: Text('11. Push Up Lutut'),
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
              child: new Image.asset('images/SikapKucing.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Sikap Kucing Sapi'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => SikapKucingSapiDialog(
            title: "Sikap Kucing Sapi",
            description:"Mulailah dengan posisi merangkak dengan lutut di bawah bokong dan tangan tepat di bawah bahu."
            "Kemudian tarik nafas dan turunkan perut , pusingkan bahu dan angkat kepala ke arah langit langit."
            "Sambil membuang nafas, lengkungkan punggung ke atas dan turunkan kepala. Ulangi latihannya."
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
              child: new Image.asset('images/PushUpTrisepTelungkup.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Push Up Trisep Telungkup'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpTrisepTelungkupDialog(
            title: "Push Up Trisep Telungkup",
            description:"Berbaring telungkup dengan kedua telapak tangan di bawah bahu bahu dan siku ditekuk."
            "Angkat dada sedikit, dan kembali ke posisi awal."
            "Ulangi latihan ini."
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
              child: new Image.asset('images/RemasanRomboid.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Remasan Romboid Duduk'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => RemasanRomboidDudukDialog(
            title: "Remasan Romboid Duduk",
            description:"Duduk dengan lutut ditekuk. Mengiringkan sedikit tubuh bahagian atas ke belakang."
            "Luruskan kedua lengan ke depan, kemudian tarik kedua siku ke belakang untuk membentuk sudut 90 darjah dan kencangkan kedua tulang belikat"
            "Ulangi latihan ini."
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
              child: new Image.asset('images/PushUpTrisepTelungkup.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Push Up Trisep Telungkup'),
        subtitle: Text('x 14'),
        onTap: () {
          showDialog(context: context, builder: (context) => PushUpTrisepTelungkupDialog(
            title: "Push Up Trisep Telungkup",
            description:"Berbaring telungkup dengan kedua telapak tangan di bawah bahu bahu dan siku ditekuk."
            "Angkat dada sedikit, dan kembali ke posisi awal."
            "Ulangi latihan ini."
            ,
          ));

        },
      ),
       ListTile(
         leading:  CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/RemasanRomboid.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Remasan Romboid Duduk'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => RemasanRomboidDudukDialog(
            title: "Remasan Romboid Duduk",
            description:"Duduk dengan lutut ditekuk. Mengiringkan sedikit tubuh bahagian atas ke belakang."
            "Luruskan kedua lengan ke depan, kemudian tarik kedua siku ke belakang untuk membentuk sudut 90 darjah dan kencangkan kedua tulang belikat"
            "Ulangi latihan ini."
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
              child: new Image.asset('images/SikapAnak.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('17. Sikap Anak'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => SikapAnakDialog(
            title: "Sikap Anak",
            description:"Mulai dengan lutut dan tangan di lantai. Letakkan tangan sedikit ke depan, lebarkan lutut, dan rapatkan jari kedua kaki."
            "Tarik nafas, kemudian buang nafas, dan kembali duduk. Cubalah menyentuh bokong dengan tumit."
            "Lemaskan siku, sentuh lantai dengan dahi, dan cubalah untuk menurunkan dada mendekat ke lantai. Tahan posisi ini."
            ,
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
                  builder:(context) => BahuDanSedia(), ));

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

class AngkatTanganSambilBerdiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatTanganSambilBerdiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatTangan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class TarikanRomboidDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  TarikanRomboidDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/TarikanRomboid.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class ATSBDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  ATSBDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/LompatSamping.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}
class ALKSDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  ALKSDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatLengan.gif'),)
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

class PereganganLantaiBerbaringMengiringKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLantaiBerbaringMengiringKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganLantaiKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganLantaiBerbaringMengiringKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLantaiBerbaringMengiringKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganLantaiKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class GuntingLenganDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  GuntingLenganDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/GuntingLengan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class SikapKucingSapiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  SikapKucingSapiDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/SikapKucing.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpTrisepTelungkupDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpTrisepTelungkupDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PushUpTrisepTelungkup.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class RemasanRomboidDudukDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  RemasanRomboidDudukDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/RemasanRomboid.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class SikapAnakDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  SikapAnakDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/SikapAnak.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}





