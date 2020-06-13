import 'package:appsatb/SenamanPage/Menengah/BahuDanMenengahSedia.dart';
import 'package:appsatb/SenamanPage/MenengahPage.dart';
import 'package:flutter/material.dart';

class BahuDanMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyBahuDanMenengah(),
    );
  }
}

class MyBahuDanMenengah extends StatefulWidget {
  @override
  _MyBahuDanMenengahState createState() => _MyBahuDanMenengahState();
}

class _MyBahuDanMenengahState extends State<MyBahuDanMenengah> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Bahu Dan Punggung Menengah'),
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
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/Ekstensi.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('2. Ekstensi Trisep Membungkuk'),
        subtitle: Text('x 14'),
         onTap: () {

           showDialog(context: context, builder: (context) => EkstensiTrisepMembungkukDialog(
            title: "Ekstensi Trisep Membungkuk",
            description:"Bungkuk ke depan, tekuk kedua lutut dan siku."
            "Luruskan kedua lengan ke belakang dan kencangkan trisep."
            "Pastikan kedua lengan sejajar dengan lantaiketika meluruskannya"
            "Kembali ke posisi awal, dan ulang semula latihan"
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
        title: Text('3. Push Up Tangan Di Atas Bangku'),
        subtitle: Text('x 14'),
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
              child: new Image.asset('images/TarikanRomboid.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Tarikan Romboid'),
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
              child: new Image.asset('images/AngkatTrisepDilantai.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Angkat Trisep Di Lantai'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatTrisepDiLantaiDialog(
            title: "Angkat Trisep Di Lantai",
            description:"Duduk di lantai dengan lutut ditekuk dan telapak kaki mendatar di lantai."
            "Letakkan tangan di bawah bahu dengan jari menghadap pinggul."
            "Angkat pinggul menjauhi lantai. Kemudian tekuk dan rentangkan lengan Anda untuk menaikkan dan menurunkan pinggul."
            
            
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
        title: Text('6. Sikap Kucing Sapi'),
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
              child: new Image.asset('images/Ekstensi.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Ekstensi Trisep Membungkuk'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => EkstensiTrisepMembungkukDialog(
            title: "Ekstensi Trisep Membungkuk",
            description:"Bungkuk ke depan, tekuk kedua lutut dan siku."
            "Luruskan kedua lengan ke belakang dan kencangkan trisep."
            "Pastikan kedua lengan sejajar dengan lantaiketika meluruskannya"
            "Kembali ke posisi awal, dan ulang semula latihan"
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
        title: Text('8. Push Up Tangan Di Atas Bangku'),
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
              child: new Image.asset('images/EngselPinggul.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Engsel Pinggul'),
        subtitle: Text('x 10'),
        onTap: () {

           showDialog(context: context, builder: (context) => EngselPinggulDialog(
            title: "Engsel Pinggul",
            description:"Berdiri tegak dengan kaki selebar bahu."
            "Dorongkan pinggul ke belakang dan bungkukkan tubuh bahagian atas sambil tetap lurus,"
            "kemudian perlahankan kembali ke posisi awal dan ulang semula latihannya."
            
            
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
              child: new Image.asset('images/AngkatTrisepDilantai.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Angkat Trisep Di Lantai'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => AngkatTrisepDiLantaiDialog(
            title: "Angkat Trisep Di Lantai",
            description:"Duduk di lantai dengan lutut ditekuk dan telapak kaki mendatar di lantai."
            "Letakkan tangan di bawah bahu dengan jari menghadap pinggul."
            "Angkat pinggul menjauhi lantai. Kemudian tekuk dan rentangkan lengan Anda untuk menaikkan dan menurunkan pinggul."
            
            
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
              child: new Image.asset('images/PereganganLantaiKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Peregangan Lantai Berbaring Mengiring Ke Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

            showDialog(context: context, builder: (context) => PereganganLantaiBerbaringMengiringKeKiriDialog(
            title: "Peregangan Lantai Berbaring Mengiring Ke Kiri",
            description:"Berbaring mengiring ke kanan dengan lutut kanan sedikit ditekuk ke depan dan kaki kiri diregangkan ke belakang kaki kanan."
            "Luruskan lengan kiri ke atas kepala dan perlahan tarik pergelangan tangan kiri untuk meregangkan sisi kiri tubuh."
            
            
            
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
              child: new Image.asset('images/PereganganLantaiKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Peregangan Lantai Berbaring Mengiring Ke Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) => PereganganLantaiBerbaringMengiringKeKananDialog(
            title: "Peregangan Lantai Berbaring Mengiring Ke Kanan",
            description:"Berbaring mengiring ke kiri dengan lutut kiri sedikit ditekuk ke depan dan kaki kanan diregangkan ke belakang kaki kiri."
            "Luruskan lengan kanan ke atas kepala dan perlahan tarik pergelangan tangan kanan untuk meregangkan sisi kanan tubuh."
            
            
            
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
              child: new Image.asset('images/PushUpMelayang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Push Up Melayang'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => PushUpMelayangDialog(
            title: "Push Up Melayang",
            description:"Mulai dengan posisi push up. Turunkan tubuh; geserkan ke kiri dan ke kanan."
            "Angkat tubuh dan ulang semula latihannya."
          
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
              child: new Image.asset('images/Superman.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Superman Dan Perenang'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => SupermanDanPerenangDialog(
            title: "Superman Dan Perenang",
            description:"Berbaring telungkup dengan kedua lengan diluruskan ke atas kepala."
            "Angkat lengan dan kaki yang berlawanan secara bergantian."
          
            ,
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
              child: new Image.asset('images/PushUpMelayang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Push Up Melayang'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpMelayangDialog(
            title: "Push Up Melayang",
            description:"Mulai dengan posisi push up. Turunkan tubuh; geserkan ke kiri dan ke kanan."
            "Angkat tubuh dan ulang semula latihannya."
          
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
              child: new Image.asset('images/Superman.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Superman Dan Perenang'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => SupermanDanPerenangDialog(
            title: "Superman Dan Perenang",
            description:"Berbaring telungkup dengan kedua lengan diluruskan ke atas kepala."
            "Angkat lengan dan kaki yang berlawanan secara bergantian."
          
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
                  builder:(context) => BahuDanMenengahSedia(), ));

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

class EkstensiTrisepMembungkukDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  EkstensiTrisepMembungkukDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Ekstensi.gif'),)
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

class AngkatTrisepDiLantaiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatTrisepDiLantaiDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatTrisepDilantai.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class EngselPinggulDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  EngselPinggulDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/EngselPinggul.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganLantaiBerbaringMengiringKeKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLantaiBerbaringMengiringKeKiriDialog({this.title, this.description, this.buttonText, this.image});

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

class PereganganLantaiBerbaringMengiringKeKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLantaiBerbaringMengiringKeKananDialog({this.title, this.description, this.buttonText, this.image});

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

class PushUpMelayangDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpMelayangDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PushUpMelayang.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class SupermanDanPerenangDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  SupermanDanPerenangDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Superman.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}