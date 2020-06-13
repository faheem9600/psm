import 'package:appsatb/SenamanPage/Lanjutan/BahuDanLanjutSedia.dart';
import 'package:appsatb/SenamanPage/LanjutanPage.dart';
import 'package:flutter/material.dart';

class BahuDanLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyBahuDanLanjutan(),
    );
  }
}

class MyBahuDanLanjutan extends StatefulWidget {
  @override
  _MyBahuDanLanjutanState createState() => _MyBahuDanLanjutanState();
}

class _MyBahuDanLanjutanState extends State<MyBahuDanLanjutan> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Bahu Dan Punggung Lanjutan'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          
          Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => LanjutanPage(), ));
      

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
              child: new Image.asset('images/Hiper.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('2. Hiperekstensi'),
        subtitle: Text('x 14'),
         onTap: () {

            showDialog(context: context, builder: (context) => HiperekstensiDialog(
            title: "Hiperekstensi",
            description:"Berbaring telungkup dengan jari kaki menyentuh lantai, dan dagu di punggung tangan."
            "Angkat dada setinggi mungkindari lantai. Tahan posisi ini selama beberapa detik lalu kembali ke posisi awal."
            "Kembali ke posisi awal dan lakukan babak berikutnya."
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
              child: new Image.asset('images/PushUpTombak.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('3. Push Up Tombak'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpTombakDialog(
            title: "Push Up Tombak",
            description:"Mulailah dengan kedua kaki dan tangan di lantai."
            "Posisikan kedua tapak tangan selebar bahu. Tekukkan tubuh dan angkat pinggul membentuk huruf 'V' terbalik."
            "Tekukkan kedua siku, dan turunkan kepala mendekat ke lantai. Angkat tubuh kembali, dan ulang semula latihan."
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
              child: new Image.asset('images/MPushUp.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Membalikkan Push Up'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => MembalikkanPushUpDialog(
            title: "Membalikkan Push Up",
            description:"Mulai dengan posisi push up seperti biasa."
            "Turunkan badan Anda lalu tekuk lutut Anda dan dorong pinggul Anda ke belakang dengan posisi lengan lurus."
            "Kembali ke posisi push up dan ulang gerakan."
            
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
              child: new Image.asset('images/Inchworms.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Inchworms'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => InchwormsDialog(
            title: "Inchworms",
            description:"Mulai dengan kaki selebar bahu."
            "Bungkukkan tubuh dan jalankan tangan di depan Anda sejauh mungkin, kemudian jalankan tangan ke belakang. Ulang latihannya."
            
            
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
        title: Text('6. Peregangan Lantai Berbaring Mengiring Ke Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLantaiBerbaringMengiringKeKiriDialog(
            title: "Peregangan Lantai Berbaring Mengiring Ke Kiri",
            description:"Berbaring mengiring ke kanan dengan lutut kanan sedikit ditekuk di depan dan kaki kiri diregangkan ke belakang kaki kanan."
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
        title: Text('7. Peregangan Lantai Berbaring Mengiring Ke Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

            showDialog(context: context, builder: (context) => PereganganLantaiBerbaringMengiringKeKananDialog(
            title: "Peregangan Lantai Berbaring Mengiring Ke Kanan",
            description:"Berbaring mengiring ke kiri dengan lutut kiri sedikit ditekuk di depan dan kaki kanan diregangkan ke belakang kaki kanan."
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
              child: new Image.asset('images/Hiper.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Hiperekstensi'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => HiperekstensiDialog(
            title: "Hiperekstensi",
            description:"Berbaring telungkup dengan jari kaki menyentuh lantai, dan dagu di punggung tangan."
            "Angkat dada setinggi mungkindari lantai. Tahan posisi ini selama beberapa detik lalu kembali ke posisi awal."
            "Kembali ke posisi awal dan lakukan babak berikutnya."
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
              child: new Image.asset('images/PushUpTombak.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Push Up Tombak'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => PushUpTombakDialog(
            title: "Push Up Tombak",
            description:"Mulailah dengan kedua kaki dan tangan di lantai."
            "Posisikan kedua tapak tangan selebar bahu. Tekukkan tubuh dan angkat pinggul membentuk huruf 'V' terbalik."
            "Tekukkan kedua siku, dan turunkan kepala mendekat ke lantai. Angkat tubuh kembali, dan ulang semula latihan."
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
              child: new Image.asset('images/MPushUp.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Membalikkan Push Up'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => MembalikkanPushUpDialog(
            title: "Membalikkan Push Up",
            description:"Mulai dengan posisi push up seperti biasa."
            "Turunkan badan Anda lalu tekuk lutut Anda dan dorong pinggul Anda ke belakang dengan posisi lengan lurus."
            "Kembali ke posisi push up dan ulang gerakan."
            
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
              child: new Image.asset('images/Inchworms.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Inchworms'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => InchwormsDialog(
            title: "Inchworms",
            description:"Mulai dengan kaki selebar bahu."
            "Bungkukkan tubuh dan jalankan tangan di depan Anda sejauh mungkin, kemudian jalankan tangan ke belakang. Ulang latihannya."
            
            
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
              child: new Image.asset('images/PereganganLantaiKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Peregangan Lantai Berbaring Mengiring Ke Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLantaiBerbaringMengiringKeKananDialog(
            title: "Peregangan Lantai Berbaring Mengiring Ke Kanan",
            description:"Berbaring mengiring ke kiri dengan lutut kiri sedikit ditekuk di depan dan kaki kanan diregangkan ke belakang kaki kanan."
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
              child: new Image.asset('images/PushUpTelentang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Push Up Telentang '),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => PushUpTelentangDialog(
            title: "Push Up Telentang",
            description:"Berbaring telentang dengan kedua tapak kaki menapak lantai dan lengan ditekuk di samping."
            "Dorong dada Anda ke atas sejauh mungkin, kemudian perlahan kembali ke posisi awal."
            "Ulangi latihannya."
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
              child: new Image.asset('images/AngkatY.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Angkat Y Lantai'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => AngkatYLantaiDialog(
            title: "Angkat Y Lantai",
            description:"Berbaring teungkup dengan wajah menghadap lantai dan kedua lengan diluruskan penuh ke samping serta ibu jari menghadap ke atas,"
            "tubuh Anda seharusnya membentuk huruf 'Y'."
            "Angkat kedua lengan dari lantai sejauh mungkin dan tahan di atas selama 2 detik. Perlahan kembali ke posisi awal dan ulangi latihannya."
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
              child: new Image.asset('images/PushUpTelentang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Push Up Telentang'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) =>PushUpTelentangDialog(
            title: "Push Up Telentang",
            description:"Berbaring telentang dengan kedua tapak kaki menapak lantai dan lengan ditekuk di samping."
            "Dorong dada Anda ke atas sejauh mungkin, kemudian perlahan kembali ke posisi awal."
            "Ulangi latihannya."
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
              child: new Image.asset('images/Angel.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('17. Malaikat Salju Terbalik'),
        subtitle: Text('x 12'), 
        onTap: () {

          showDialog(context: context, builder: (context) => MalaikatSaljuTerbalikDialog(
          title: "Malaikat Salju Terbalik",
          description:"Berbaring telungkup dengan lengan di samping."
          "Angkat kedua lengan ke atas dan luruskan melewati kepala sambil kedua ibu jari bersentuhan."
          "Kemudian perlahan turunkan kembali lengan Anda. Ulangi latihannya."
            
            
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
        title: Text('18. Sikap Anak'),
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
                  builder:(context) => BahuDanLanjutanSedia(), ));

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

class HiperekstensiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  HiperekstensiDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Hiper.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpTombakDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpTombakDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PushUpTombak.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class MembalikkanPushUpDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  MembalikkanPushUpDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/MPushUp.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class InchwormsDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  InchwormsDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Inchworms.gif'),)
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

class PushUpTelentangDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PushUpTelentangDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PushUpTelentang.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class AngkatYLantaiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatYLantaiDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatY.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class MalaikatSaljuTerbalikDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  MalaikatSaljuTerbalikDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Angel.gif'),)
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