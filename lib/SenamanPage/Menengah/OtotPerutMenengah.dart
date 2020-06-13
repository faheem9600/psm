
import 'package:appsatb/SenamanPage/Menengah/OtotMenengahSedia.dart';
import 'package:appsatb/SenamanPage/MenengahPage.dart';
import 'package:flutter/material.dart';

class OtotPerutMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyOtotPerutMenengah(),
    );
  }
}

class MyOtotPerutMenengah extends StatefulWidget {
  @override
  _MyOtotPerutMenengahState createState() => _MyOtotPerutMenengahState();
}

class _MyOtotPerutMenengahState extends State<MyOtotPerutMenengah> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Otot Perut Menengah'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          
          Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MenengahPage(), ));
      

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
            "\n Latihan ini memberikan olahraga seluruh tubuh dan menggerakkan semua"
            "kelompok otot besar anda.",
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
        title: Text('2. Sentuh Tumit'),
        subtitle: Text('x 26'),
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
              child: new Image.asset('images/SitUpSilang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('3. Sit Up Silang'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) =>SitUpSilangDialog(
            title: "Sit Up Silang",
            description:"Berbaring telentang dengan lutut ditekuk dan tangan berada di belakang telinga Anda."
            "Angkat dan pusing tubuh atas sehingga siku kanan bergerak sejajar lutut kiri. Ulang semula dengan sisi lainnya."
          
            
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
        subtitle: Text('x 20'),
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
              child: new Image.asset('images/PapanMenyampingKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Papan Menyamping Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => PapanMenyampingKiriDialog(
            title: "Papan Menyamping Kiri",
            description:"Berbaring mengiring ke kanan. Letakkan siku kanan tepat di bawah bahu dan letakkan tangan kiri di pinggang"
            "Letakkan kaki kiri di atas kaki kanan."
            "Angkat pinggul ke atas, tahan selama 2-4 detik, kemudian kembali ke posisi awal. Ulang semula latihan ini."
          
            
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
              child: new Image.asset('images/PapanMenyampingKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Papan Menyamping Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => PapanMenyampingKananDialog(
            title: "Papan Menyamping Kanan",
            description:"Berbaring mengiring ke kiri. Letakkan siku kiri tepat di bawah bahu dan letakkan tangan kanan di pinggang"
            "Letakkan kaki kanan di atas kaki kiri."
            "Angkat pinggul ke atas, tahan selama 2-4 detik, kemudian kembali ke posisi awal. Ulang semula latihan ini."
          
            
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
              child: new Image.asset('images/JambatanBokong.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Jambatan Bokong'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => JambatanBokongDialog(
            title: "Jambatan Bokong",
            description:"Berbaring telentang dan tekuk lutut Anda dengan telapak kaki rata di lantai. Letakkan lengan di samping tubuh Anda."
            "Kemudian angkat bokong Anda dari lantai sejauh mungkin seperti jambatan "
           
          
            
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
              child: new Image.asset('images/CrunchSepeda.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Crunch Sepeda'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => CrunchSepedaDialog(
            title: "Crunch Sepeda",
            description:"Berbaring lurus dengan lutut ditekuk dan telapak kaki rata di lantai."
            "Kemudian angkat lutut kanan agar membuat sudut 45 darjah dengan tubuh, kemmudian cuba menyentuhkan siku kiri Anda ke lutut kanan."
            "Kemudian kembali dan lakukan latihan dengan sisi lain"
           
          
            
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
              child: new Image.asset('images/SitUpV.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Sit Up V'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => SitUpVDialog(
            title: "Sit Up V",
            description:"Berbaring telentang dengan kedua lengan dan kaki diluruskan serta kaki dirapatkan."
            "Angkat tubuh bahagian atas dan kedua kaki, gunakan lengan untuk menyentuh jari kaki, kemudian kembali ke posisi awal dan ulang semula latihan."
            
          
            
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
        title: Text('11. Sentuh Tumit'),
        subtitle: Text('x 26'),
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
              child: new Image.asset('images/CrunchPerut.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Crunch Perut'),
        subtitle: Text('x 20'),
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
              child: new Image.asset('images/SitUpSilang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Sit Up Silang'),
        subtitle: Text('x 20'),
        onTap: () {

           showDialog(context: context, builder: (context) =>SitUpSilangDialog(
            title: "Sit Up Silang",
            description:"Berbaring telentang dengan lutut ditekuk dan tangan berada di belakang telinga Anda."
            "Angkat dan pusing tubuh atas sehingga siku kanan bergerak sejajar lutut kiri. Ulang semula dengan sisi lainnya."
          
            
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
        title: Text('15. Angkat Kaki '),
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
              child: new Image.asset('images/CrunchSepeda.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Crunch Sepeda'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => CrunchSepedaDialog(
            title: "Crunch Sepeda",
            description:"Berbaring lurus dengan lutut ditekuk dan telapak kaki rata di lantai."
            "Kemudian angkat lutut kanan agar membuat sudut 45 darjah dengan tubuh, kemmudian cuba menyentuhkan siku kiri Anda ke lutut kanan."
            "Kemudian kembali dan lakukan latihan dengan sisi lain"
           
          
            
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
              child: new Image.asset('images/PushUpDanPusingan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('17. Push Up Dan Pusingan'),
        subtitle: Text('x 20'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpDanPusinganDialog(
            title: "Push Up Dan Pusingan",
            description:"Mulai dengan posisi push up,"
            "Kemudian pusingkan tubuh atas dengan lengan kanan diluruskan. Kembali dan ulang semula dengan sisi lain."
            "Latihan ini memberikan olahraga yang baik untuk dada, bahu, lengan dan otot inti"
           
          
            
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
              child: new Image.asset('images/KananPlankSisi.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('18. Kanan Plank Sisi'),
        subtitle: Text('00:20'),
        onTap: () {

          showDialog(context: context, builder: (context) => KananPlankSisiDialog(
            title: "Kanan Plank Sisi",
            description:"Berbaring di sisi tubuh dengan lengan menumpu tubuh."
            "Kemudian angkat tubuh Anda membentuk garis lurus. Latihan ini melatih otot perut dan otot oblik"
            
           
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
              child: new Image.asset('images/KiriPlankSisi.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('19. Kiri Plank Sisi'),
        subtitle: Text('00:20'),
        onTap: () {

          showDialog(context: context, builder: (context) => KiriPlankSisiDialog(
            title: "Kiri Plank Sisi",
            description:"Berbaring di sisi tubuh dengan lengan menumpu tubuh."
            "Kemudian angkat tubuh Anda membentuk garis lurus. Latihan ini melatih otot perut dan otot oblik"
            
           
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
        title: Text('20. Peregangan Kobra'),
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
        title: Text('21. Peregangan Putaran Lumbar Tulang Belakang Kiri '),
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
        title: Text('22. Peregangan Putaran Lumbar Tulang Belakang Kanan '),
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
                  builder:(context) => OtotMenengahSedia(), ));

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

class SitUpSilangDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  SitUpSilangDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/SitUpSilang.gif'),)
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

class PapanMenyampingKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PapanMenyampingKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PapanMenyampingKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PapanMenyampingKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PapanMenyampingKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PapanMenyampingKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class JambatanBokongDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  JambatanBokongDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/JambatanBokong.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}


class CrunchSepedaDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  CrunchSepedaDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/CrunchSepeda.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class SitUpVDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  SitUpVDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/SitUpV.gif'),)
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

class PushUpDanPusinganDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpDanPusinganDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PushUpDanPusingan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class KananPlankSisiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  KananPlankSisiDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/KananPlankSisi.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class KiriPlankSisiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  KiriPlankSisiDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/KiriPlankSisi.gif'),)
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