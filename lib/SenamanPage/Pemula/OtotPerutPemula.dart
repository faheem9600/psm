
import 'package:appsatb/SenamanPage/PemulaPage.dart';
import 'package:flutter/material.dart';
import 'SediaOPP.dart';

class OtotPerutPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyOtotPerutPemula(),
    );
  }
}

class MyOtotPerutPemula extends StatefulWidget {
  @override
  _MyOtotPerutPemulaState createState() => _MyOtotPerutPemulaState();
}

class _MyOtotPerutPemulaState extends State<MyOtotPerutPemula> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Otot Perut Pemula'),
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
        subtitle: Text('00:20'),
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
              child: new Image.asset('images/CrunchPerut.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('2. Crunch Perut'),
        subtitle: Text('x 16'),
         onTap: () {

            showDialog(context: context, builder: (context) => CrunchPerutDialog(
            title: "Crunch Perut",
            description:"Berbaring di Punggung Anda dengan lutut ditekuk dan telapak"
            "tangan di bawah kepala."
            "Kemudian angkat bahu Anda dari lantai."
            "Pertahankan selama beberapa detik dan perlahan lahan kembali ke posisi awal."
            "Latihan ini bekerja terutama di otot rektus abdominis dan otot oblik",
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
              child: new Image.asset('images/PutarRusia.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('3. Putar Rusia'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => PutarRusiaDialog(
            title: "Putar Rusia",
            description:"Duduk di lantai dengan lutut ditekuk dan punggung dimiringkan ke belakang."
            "Anda boleh menyilangkan kaki untuk menjaga keseimbangan."
            "Lalu rapatkan telapak tangan dan lengan menjauh dari tubuh,"
            "dan hayunkan dari satu sisi ke sisi lain."
            
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
              child: new Image.asset('images/PendakiGunung.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Pendaki Gunung'),
        subtitle: Text('x 16'),
        onTap: () {

           showDialog(context: context, builder: (context) => PendakiGunungDialog(
            title: "Pendaki Gunung",
            description:"Mulai dengan posisi push up"
            "Tekuk lutut kanan ke arah  dada dengan kaki kiri lurus,"
            "lalu ganti kaki di udara dan tekuk lutut kiri ke arah dada"
            "dengan kaki kanan lurus. Lakukan latihan ini semakin cepat"
            "Ini akan memperkuatkan berbagai kelompok otot dalam sistem kardiovaskular."
            
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
              child: new Image.asset('images/SentuhTumit.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Sentuh Tumit'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => SentuhTumitDialog(
            title: "Sentuh Tumit",
            description:"Berbaring di lantai dengan kedua kaki ditekuk dan kedua tangan di samping"
            "Angkat sedikit tubuh bahagian atas dari lantai dan raih tumit dengan tangan secara bergantian"
          
            
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
              child: new Image.asset('images/AngkatKaki.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Angkat Kaki'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatKakiDialog(
            title: "Angkat Kaki",
            description:"Bebaringlah dan letakkan tangan di bawah pinggul Anda untuk mendukung."
            "Kemudian, angkat kedua kaki ke atas dengan lurus, hingga membentuk sudut yang tepat dengan lantai."
            "Perlahan turunkan kaki dan ulangi gerakan."
            
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
              child: new Image.asset('images/Plank.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Plank'),
        subtitle: Text('00:20'),
        onTap: () {

            showDialog(context: context, builder: (context) => PlankDialog(
            title: "Plank",
            description:"Mulai dari posisi push up dengan berat tubuh bertumpu pada lengan bawah, siku dan jari kaki."
            "Latihan Plank ini dapat memperkuatkan perut, punggung dan bahu."
            
            
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
              child: new Image.asset('images/CrunchPerut.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Crunch Perut'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => CrunchPerutDialog(
            title: "Crunch Perut",
            description:"Berbaring di Punggung Anda dengan lutut ditekuk dan telapak"
            "tangan di bawah kepala."
            "Kemudian angkat bahu Anda dari lantai."
            "Pertahankan selama beberapa detik dan perlahan lahan kembali ke posisi awal."
            "Latihan ini bekerja terutama di otot rektus abdominis dan otot oblik",
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
              child: new Image.asset('images/PutarRusia.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Putar Rusia'),
        subtitle: Text('x 32'),
        onTap: () {

          showDialog(context: context, builder: (context) => PutarRusiaDialog(
            title: "Putar Rusia",
            description:"Duduk di lantai dengan lutut ditekuk dan punggung dimiringkan ke belakang."
            "Anda boleh menyilangkan kaki untuk menjaga keseimbangan."
            "Lalu rapatkan telapak tangan dan lengan menjauh dari tubuh,"
            "dan hayunkan dari satu sisi ke sisi lain."
            
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
              child: new Image.asset('images/PendakiGunung.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        
        title: Text('10. Pendaki Gunung'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => PendakiGunungDialog(
            title: "Pendaki Gunung",
            description:"Mulai dengan posisi push up"
            "Tekuk lutut kanan ke arah  dada dengan kaki kiri lurus,"
            "lalu ganti kaki di udara dan tekuk lutut kiri ke arah dada"
            "dengan kaki kanan lurus. Lakukan latihan ini semakin cepat"
            "Ini akan memperkuatkan berbagai kelompok otot dalam sistem kardiovaskular."
            
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
              child: new Image.asset('images/SentuhTumit.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Sentuh Tumit'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => SentuhTumitDialog(
            title: "Sentuh Tumit",
            description:"Berbaring di lantai dengan kedua kaki ditekuk dan kedua tangan di samping"
            "Angkat sedikit tubuh bahagian atas dari lantai dan raih tumit dengan tangan secara bergantian"
          
            
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
              child: new Image.asset('images/AngkatKaki.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Angkat Kaki'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatKakiDialog(
            title: "Angkat Kaki",
            description:"Bebaringlah dan letakkan tangan di bawah pinggul Anda untuk mendukung."
            "Kemudian, angkat kedua kaki ke atas dengan lurus, hingga membentuk sudut yang tepat dengan lantai."
            "Perlahan turunkan kaki dan ulangi gerakan."
            
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
              child: new Image.asset('images/Plank.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Plank'),
        subtitle: Text('00:30'),
        onTap: () {
           showDialog(context: context, builder: (context) => PlankDialog(
            title: "Plank",
            description:"Mulai dari posisi push up dengan berat tubuh bertumpu pada lengan bawah, siku dan jari kaki."
            "Latihan Plank ini dapat memperkuatkan perut, punggung dan bahu."
            
            
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
        title: Text('14. Peregangan Kobra'),
        subtitle: Text('00:30'),
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
              child: new Image.asset('images/ppbkiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Peregangan Putaran Lumbar Tulang Belakang Kiri '),
        subtitle: Text('00:30'),
        onTap: () {

            showDialog(context: context, builder: (context) => PereganganPutaranLumbarTulangBelakangKiriDialog(
            title: "Peregangan Putaran Lumbar Tulang Belakang Kiri",
            description:"Berbaring telentang dengan kedua kaki diluruskan."
            "Angkat kaki kiri dan gunakan tangan kanan untuk menarik lutut kiri ke kanan,"
            "tetapi biarkan lengan satu lagi tetap diluruskan ke samping di lantai"
            
            
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
              child: new Image.asset('images/ppbkanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Peregangan Putaran Lumbar Tulang Belakang Kanan '),
        subtitle: Text('00:30'),
        onTap: () {
          showDialog(context: context, builder: (context) => PereganganPutaranLumbarTulangBelakangKananDialog(
            title: "Peregangan Putaran Lumbar Tulang Belakang Kanan",
            description:"Berbaring telentang dengan kedua kaki diluruskan."
            "Angkat kaki kanan dan gunakan tangan kiri untuk menarik lutut kanan ke kiri,"
            "tetapi biarkan lengan satu lagi tetap diluruskan ke samping di lantai"
            
            
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
                  builder:(context) => SediaOPP(), ));


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


class CrunchPerutDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  CrunchPerutDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/CrunchPerut.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}


class PutarRusiaDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PutarRusiaDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PutarRusia.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}


class PendakiGunungDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PendakiGunungDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PendakiGunung.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}


class SentuhTumitDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  SentuhTumitDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/SentuhTumit.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class AngkatKakiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatKakiDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatKaki.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PlankDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PlankDialog({this.title, this.description, this.buttonText, this.image});

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
        child:CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/Plank.gif'),)
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

class PereganganPutaranLumbarTulangBelakangKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganPutaranLumbarTulangBelakangKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/ppbkiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganPutaranLumbarTulangBelakangKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganPutaranLumbarTulangBelakangKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/ppbkanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}




          
          
          
       
          
