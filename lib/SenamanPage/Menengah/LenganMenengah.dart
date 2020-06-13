

import 'package:appsatb/SenamanPage/Menengah/LenganMenengahSedia.dart';
import 'package:appsatb/SenamanPage/MenengahPage.dart';
import 'package:flutter/material.dart';

class LenganMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyLenganMenengah(),
    );
  }
}

class MyLenganMenengah extends StatefulWidget {
  @override
  _MyLenganMenengahState createState() => _MyLenganMenengahState();
}

class _MyLenganMenengahState extends State<MyLenganMenengah> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Lengan Menengah'),
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
              child: new Image.asset('images/PutarLenganJam.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('1. Putar Lengan Searah Jarum Jam'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PutarLenganSearahJarumJamDialog(
            title: "Putar Lengan Searah Jarum Jam",
            description:"Berdiri di lantai dengan kedua lengan diluruskan ke samping setinggi bahu. "
            "Gerakkan kedua lengan melingkar searah jarum jam dengan cepat."
            
            
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
              child: new Image.asset('images/PutarLenganLawanJam.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('2.Putar Lengan Berlawanan Arah Jarum Jam'),
        subtitle: Text('00:30'),
         onTap: () {

            showDialog(context: context, builder: (context) => PutarLenganBerlawananJarumJamDialog(
            title: "Putar Lengan Berlawanan Arah Jarum Jam",
            description:"Berdiri di lantai dengan kedua lengan diluruskan ke samping setinggi bahu. "
            "Gerakkan kedua lengan melingkar berlawanan arah jarum jam dengan cepat."
            
            
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
        title: Text('3. Angkat Trisep Di Lantai'),
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
        leading:  CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpMiliter.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Push Up Militer'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpMiliterDialog(
            title: "Push Up Militer",
            description:"Mulailah dari posisi push up dengan kedua tangan tepat di bawah bahu, siku dekat dengan tubuh,"
            "dan jarak kedua kaki tidak lebih dari 12 inci."
            "Tekukkan kedua siku dan turunkan tubuh sampai lengan atas sejajar dengan lantai. Tahan posisi ini selama 1 detik"
            "kemudian dorongkan kembali tubuh ke posisi awal dan ulang semula."
            
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
              child: new Image.asset('images/HookUp.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Hook Bergantian'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) =>HookBergantianDialog(
            title: "Hook Bergantian",
            description:"Berdiri dengan kaki selebar bahu, danposisikan kaki dominan sedikit ke depan,"
            "Tekuk sedikit kedua lutut, kepalkan kedua tangan, dan tekukkan kedua siku membentuk sudut 90 darjah."
            "Angkat lengan kanan setinggi bahu dan jaga lengan bawah tetap sejajar lantai."
            "Pusingkan bahu serta pinggul dan lemparkan pukulan ke kiri,. Ganti sisi dan ulang semula."
            
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
              child: new Image.asset('images/PushUpDanPusingan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Push Up Dan Pusingan'),
        subtitle: Text('x 12'),
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
              child: new Image.asset('images/CurlBarbelKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Curl Barbel kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => CurlBarbelKakiKiriDialog(
            title: "Curl Barbel Kaki Kiri",
            description:"Berdiri membelakangi tembok. Angkat kaki kanan, bungkuk ke depan dan genggam pergelangan kaki kanan dari bawah"
            "dengan tangan kiri"
            "Tarik pergelangan kaki sejauh mungkin ke arah bahu, kemudian turunkan dan ulang semula latihannya."
         
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
              child: new Image.asset('images/CurlBarbelKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Curl Barbel Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => CurlBarbelKakiKananDialog(
            title: "Curl Barbel Kaki Kanan",
            description:"Berdiri membelakangi tembok. Angkat kaki kiri, bungkuk ke depan dan genggam pergelangan kaki kiri dari bawah"
            "dengan tangan kanan"
            "Tarik pergelangan kaki sejauh mungkin ke arah bahu, kemudian turunkan dan ulang semula latihannya."
         
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
        title: Text('9. Angkat Trisep Di Lantai'),
        subtitle: Text('x 12'),
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
        leading:  CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PushUpMiliter.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Push Up Militer'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => PushUpMiliterDialog(
            title: "Push Up Militer",
            description:"Mulailah dari posisi push up dengan kedua tangan tepat di bawah bahu, siku dekat dengan tubuh,"
            "dan jarak kedua kaki tidak lebih dari 12 inci."
            "Tekukkan kedua siku dan turunkan tubuh sampai lengan atas sejajar dengan lantai. Tahan posisi ini selama 1 detik"
            "kemudian dorongkan kembali tubuh ke posisi awal dan ulang semula."
            
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
              child: new Image.asset('images/HookUp.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Hook Bergantian'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) =>HookBergantianDialog(
            title: "Hook Bergantian",
            description:"Berdiri dengan kaki selebar bahu, danposisikan kaki dominan sedikit ke depan,"
            "Tekuk sedikit kedua lutut, kepalkan kedua tangan, dan tekukkan kedua siku membentuk sudut 90 darjah."
            "Angkat lengan kanan setinggi bahu dan jaga lengan bawah tetap sejajar lantai."
            "Pusingkan bahu serta pinggul dan lemparkan pukulan ke kiri,. Ganti sisi dan ulang semula."
            
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
              child: new Image.asset('images/PushUpDanPusingan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Push Up Dan Pusingan'),
        subtitle: Text('x 10'),
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
              child: new Image.asset('images/CurlBarbelKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Curl Barbel Kaki Kiri'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => CurlBarbelKakiKiriDialog(
            title: "Curl Barbel Kaki Kiri",
            description:"Berdiri membelakangi tembok. Angkat kaki kanan, bungkuk ke depan dan genggam pergelangan kaki kanan dari bawah"
            "dengan tangan kiri"
            "Tarik pergelangan kaki sejauh mungkin ke arah bahu, kemudian turunkan dan ulang semula latihannya."
         
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
              child: new Image.asset('images/CurlBarbelKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Curl Badan Kaki Kanan'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => CurlBarbelKakiKananDialog(
            title: "Curl Barbel Kaki Kanan",
            description:"Berdiri membelakangi tembok. Angkat kaki kiri, bungkuk ke depan dan genggam pergelangan kaki kiri dari bawah"
            "dengan tangan kanan"
            "Tarik pergelangan kaki sejauh mungkin ke arah bahu, kemudian turunkan dan ulang semula latihannya."
         
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
              child: new Image.asset('images/LompatTanpaTali.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Lompat Tanpa Tali'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatTanpaTaliDialog(
            title: "Lompat Tanpa Tali",
            description:"Letakkan lengan di samping dan bayangkan tangan Anda menggenggam pegangan tali."
            "Melompat dan secara bergantian mendaratlah dengan bahagian depan telapak kaki sambil memutar pergelangan tangan"
            "seolah olah sedang memutarkan tali."
            
            
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
        title: Text('16. Push Up'),
        subtitle: Text('x 14'),
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
              child: new Image.asset('images/Burpee.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('17. Burpee'),
        subtitle: Text('x 10'),
        onTap: () {

          showDialog(context: context, builder: (context) => BurpeeDialog(
            title: "Burpee",
            description:"Mulai dengan posisi jongkok, dan lakukan push up dan lompat ke atas cepat."
            "Kemudian kembali ke posisi jongkok dan lakukan babak lainnya secara berurutan."
            "Burpee adalah latihan atau senaman tubuh lengkap mengenai latihan kekuatan dan aerobik."
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
        title: Text('18. Gunting Lengan'),
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
              child: new Image.asset('images/LompatTanpaTali.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('19. Lompat Tanpa Tali'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatTanpaTaliDialog(
            title: "Lompat Tanpa Tali",
            description:"Letakkan lengan di samping dan bayangkan tangan Anda menggenggam pegangan tali."
            "Melompat dan secara bergantian mendaratlah dengan bahagian depan telapak kaki sambil memutar pergelangan tangan"
            "seolah olah sedang memutarkan tali."
            
            
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
        title: Text('20. Push Up'),
        subtitle: Text('x 12'),
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
              child: new Image.asset('images/Burpee.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('21. Burpee'),
        subtitle: Text('x 8'),
        onTap: () {

          showDialog(context: context, builder: (context) => BurpeeDialog(
            title: "Burpee",
            description:"Mulai dengan posisi jongkok, dan lakukan push up dan lompat ke atas cepat."
            "Kemudian kembali ke posisi jongkok dan lakukan babak lainnya secara berurutan."
            "Burpee adalah latihan atau senaman tubuh lengkap mengenai latihan kekuatan dan aerobik."
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
              child: new Image.asset('images/PereganganTrisepKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('22. Peregangan Trisep Kiri'),
        subtitle: Text('00:30'),
        onTap: () {
           showDialog(context: context, builder: (context) => PereganganTrisepKiriDialog(
            title: "Peregangan Trisep Kiri",
            description:"Letakkan tangan kiri di punggung, gunakan tangan kanan untuk meraih siku kiri dan perlahan tarik siku kiri."
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
              child: new Image.asset('images/PereganganTrisepKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('23. Peregangan Trisep Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganTrisepKananDialog(
            title: "Peregangan Trisep Kanan",
            description:"Letakkan tangan kanan di punggung, gunakan tangan kiri untuk meraih siku kanan dan perlahan tarik siku kanan."
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
              child: new Image.asset('images/PereganganBisepBerdiriKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('24. Peregangan Bisep Berdiri Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganBisepBerdiriKiriDialog(
            title: "Peregangan Bisep Berdiri Kiri",
            description:"Berdiri dengan lengan kiri di dekat tembok."
            "Luruskan lengan kiri dan letakkan tangan kiri di tembok, kemudian perlahan pusing tubuh ke kanan."
            
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
              child: new Image.asset('images/PereganganBisepKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('25. Peregangan Bisep Berdiri Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) => PereganganBisepBerdiriKananDialog(
            title: "Peregangan Bisep Berdiri Kanan",
            description:"Berdiri dengan lengan kanan di dekat tembok."
            "Luruskan lengan kanan dan letakkan tangan kanan di tembok, kemudian perlahan pusing tubuh ke kiri."
            
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
                  builder:(context) => LenganMenengahSedia(), ));

      }))

    ],
  );
}

class PutarLenganSearahJarumJamDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 PutarLenganSearahJarumJamDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PutarLenganJam.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}


class PutarLenganBerlawananJarumJamDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 PutarLenganBerlawananJarumJamDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PutarLenganLawanJam.gif'),)
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

class CurlBarbelKakiKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 CurlBarbelKakiKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/CurlBarbelKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class CurlBarbelKakiKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 CurlBarbelKakiKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/CurlBarbelKanan.gif'),)
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

class PereganganTrisepKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 PereganganTrisepKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganTrisepKiri.gif'),)
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

class PereganganTrisepKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 PereganganTrisepKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganTrisepKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PushUpMiliterDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

PushUpMiliterDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PushUpMiliter.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class HookBergantianDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 HookBergantianDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/HookUp.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class LompatTanpaTaliDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 LompatTanpaTaliDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/LompatTanpaTali.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class BurpeeDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 BurpeeDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Burpee.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganBisepBerdiriKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 PereganganBisepBerdiriKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganBisepBerdiriKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganBisepBerdiriKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

 PereganganBisepBerdiriKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganBisepKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}


























