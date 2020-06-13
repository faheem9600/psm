import 'package:appsatb/SenamanPage/Pemula/KakiPemulaSedia.dart';
import 'package:appsatb/SenamanPage/PemulaPage.dart';
import 'package:flutter/material.dart';

class KakiPemula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyKakiPemula(),
    );
  }
}

class MyKakiPemula extends StatefulWidget {
  @override
  _MyKakiPemulaState createState() => _MyKakiPemulaState();
}

class _MyKakiPemulaState extends State<MyKakiPemula> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Kaki Pemula'),
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
              child: new Image.asset('images/LompatSamping.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('1. Lompat Samping'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatSampingDialog(
            title: "Lompat Samping",
            description:"Berdiri di lantai, letakkan tangan di depan, dan melompatlah ke samping dari sisi ke sisi."
            
            
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
              child: new Image.asset('images/Squat.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('2. Squat'),
        subtitle: Text('x 12'),
         onTap: () {

           showDialog(context: context, builder: (context) => SquatDialog(
            title: "Squat",
            description:"Berdiri di atas lantai dengan kaki terpisah, lalu tekuk lutut dan turunkan pinggul Anda sampai menjadi sejajar dengan lantai."
            "Kemudian kembali ke posisi berdiri. Latihan ini melatih peha, pinggul, bokong, otot kuadrisep, tendon harmstring dan bahagian bawah tubuh."
            
            
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
              child: new Image.asset('images/Squat.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('3. Squat'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SquatDialog(
            title: "Squat",
            description:"Berdiri di atas lantai dengan kaki terpisah, lalu tekuk lutut dan turunkan pinggul Anda sampai menjadi sejajar dengan lantai."
            "Kemudian kembali ke posisi berdiri. Latihan ini melatih peha, pinggul, bokong, otot kuadrisep, tendon harmstring dan bahagian bawah tubuh."
            
            
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
              child: new Image.asset('images/AngkatKakiBaringKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Angkat Kaki Sambil Berbaring Menyamping Ke Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AKSBMKKiriDialog(
            title: "Angkat Kaki Sambil Berbaring Menyamping Ke Kanan",
            description:"Berbaring ke samping dengan kanan lengan sebagai bantal kepala. Angkat kaki ke atas dan kembali ke posisi semula. "
            "Ganti dengan sisi lainnya setelah beberapa set."
            "Pastikan kaki Anda lurus dan naik turun selama melakukan senaman ini."
            "\t Otot: Glutes"
            
            
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
              child: new Image.asset('images/AngkatKakiBaringKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Angkat Kaki Sambil Berbaring Menyamping Ke Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AKSBMKKananDialog(
            title: "Angkat Kaki Sambil Berbaring Menyamping Ke Kanan",
            description:"Berbaring ke samping dengan kiri lengan sebagai bantal kepala. Angkat kaki ke atas dan kembali ke posisi semula. "
            "Ganti dengan sisi lainnya setelah beberapa set."
            "Pastikan kaki Anda lurus dan naik turun selama melakukan senaman ini."
            "\t Otot: Glutes"
            
            
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
              child: new Image.asset('images/AngkatKakiBaringKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Angkat Kaki Sambil Berbaring Menyamping Ke Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AKSBMKKiriDialog(
            title: "Angkat Kaki Sambil Berbaring Menyamping Ke Kiri",
            description:"Berbaring ke samping dengan kanan lengan sebagai bantal kepala. Angkat kaki ke atas dan kembali ke posisi semula. "
            "Ganti dengan sisi lainnya setelah beberapa set."
            "Pastikan kaki Anda lurus dan naik turun selama melakukan senaman ini."
            "\t Otot: Glutes"
            
            
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
              child: new Image.asset('images/AngkatKakiBaringKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Angkat Kaki Sambil Berbaring Menyamping Ke Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => AKSBMKKananDialog(
            title: "Angkat Kaki Sambil Berbaring Menyamping Ke Kanan",
            description:"Berbaring ke samping dengan kiri lengan sebagai bantal kepala. Angkat kaki ke atas dan kembali ke posisi semula. "
            "Ganti dengan sisi lainnya setelah beberapa set."
            "Pastikan kaki Anda lurus dan naik turun selama melakukan senaman ini."
            "\t Otot: Glutes"
            
            
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
              child: new Image.asset('images/TerjangMundur.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Terjang Mundur'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => TerjangMundurDialog(
            title: "Terjang Mundur",
            description:"Berdiri dengan kaki selebar bahu dan tangan di pinggul."
            "Ambil satu langkah lebar ke belakang dengan kaki kanan dan turunkan tubuh sampai peha kiri sejajar dengan lantai."
            "Kembali dan ulangi dengan kaki satu lagi."
            
            
            
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
              child: new Image.asset('images/TerjangMundur.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Terjang Mundur'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => TerjangMundurDialog(
            title: "Terjang Mundur",
            description:"Berdiri dengan kaki selebar bahu dan tangan di pinggul."
            "Ambil satu langkah lebar ke belakang dengan kaki kanan dan turunkan tubuh sampai peha kiri sejajar dengan lantai."
            "Kembali dan ulangi dengan kaki satu lagi."
            
            
            
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
              child: new Image.asset('images/TendangKeldaiKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Tendangan Keldai Kiri'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TendanganKeldaiKiriDialog(
            title: "Tendangan Keldai Kiri",
            description:"Mulai dalam posisi mmerangkak dengan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Kemudian angkat kaki kiri dan tekan bokong Anda sejauh mungkin."
            
            
            
            
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
              child: new Image.asset('images/TendangKeldaiKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Tendangan Keldai Kanan'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TendanganKeldaiKananDialog(
            title: "Tendangan Keldai Kanan",
            description:"Mulai dalam posisi mmerangkak dengan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Kemudian angkat kaki kanan dan tekan bokong Anda sejauh mungkin."
            
            
            
            
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
              child: new Image.asset('images/TendangKeldaiKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Tendangan Keldai Kiri'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TendanganKeldaiKiriDialog(
            title: "Tendangan Keldai Kiri",
            description:"Mulai dalam posisi mmerangkak dengan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Kemudian angkat kaki kiri dan tekan bokong Anda sejauh mungkin."
            
            
            
            
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
              child: new Image.asset('images/TendangKeldaiKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Tendangan Keldai Kiri Kanan'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TendanganKeldaiKananDialog(
            title: "Tendangan Keldai Kanan",
            description:"Mulai dalam posisi mmerangkak dengan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Kemudian angkat kaki kanan dan tekan bokong Anda sejauh mungkin."
            
            
            
            
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
              child: new Image.asset('images/PereganganKuadrisepKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Peregangan Kuadrisep Kiri di Tembok'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) => PereganganKuadrisepKiriDialog(
            title: "Peregangan Kuadrisep Kiri di Tembok",
            description:"Berdiri dengan tangan kanan di tembok."
            "Tekukkan kaki kiri dan pegang erat pergelangan kaki atau jari kaki, tarik dan rapatkan betis kiri ke peha kiri. Tahan posisi ini."
            
            
            
            
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
              child: new Image.asset('images/PereganganKuadrisepKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Peregangan Kuadrisep Kanan di Tembok'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganKuadrisepKananDialog(
            title: "Peregangan Kuadrisep Kanan di Tembok",
            description:"Berdiri dengan tangan kanan di tembok."
            "Tekukkan kaki kanan dan pegang erat pergelangan kaki atau jari kaki, tarik dan rapatkan betis kanan ke peha kanan. Tahan posisi ini."
            
            
          
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
              child: new Image.asset('images/PereganganLututKeDadaKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Peregangan Lutut ke Dada Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLututkeDadaKiriDialog(
            title: "Peregangan Lutut ke Dada Kiri",
            description:"Berbaring di lantai dengan kedua kaki diluruskan. Angkat lutut kiri dan pegang dengan kedua tangan."
            "Tarik lutut kiri sedekat mungkin ke dada dan pertahankan kaki kanan tetap lurus di lantai."
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
              child: new Image.asset('images/PereganganLututKeDadaKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('17. Peregangan Lutut ke Dada Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLututkeDadaKananDialog(
            title: "Peregangan Lutut ke Dada Kanan",
            description:"Berbaring di lantai dengan kedua kaki diluruskan. Angkat lutut kanan dan pegang dengan kedua tangan."
            "Tarik lutut kanan sedekat mungkin ke dada dan pertahankan kaki kiri tetap lurus di lantai."
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
              child: new Image.asset('images/AngkatBetisMenghadapTembok.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('18. Angkat Betis Menghadap Tembok'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBetisMenghadapTembokDialog(
            title: "Angkat Betis Menghadap Tembok",
            description:"Berdiri tegak dengan kedua tangan di tembok dan kaki selebar bahu."
            "Angkat kedua tumit dan berdirilah dengan jari kaki. Kemudian turunkan tumit dan ulangi latihannya"
            
            
            
          
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
              child: new Image.asset('images/AngkatBetisMenghadapTembok.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('19. Angkat Betis Menghadap Tembok'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBetisMenghadapTembokDialog(
            title: "Angkat Betis Menghadap Tembok",
            description:"Berdiri tegak dengan kedua tangan di tembok dan kaki selebar bahu."
            "Angkat kedua tumit dan berdirilah dengan jari kaki. Kemudian turunkan tumit dan ulangi latihannya"
            
            
            
          
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
              child: new Image.asset('images/JongkokSumo.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('20. Jongkok Sumo Angkat Betis di Tembok'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => JongkokSumoBetisTembokDialog(
            title: "Jongkok Sumo Angkat Betis di Tembok",
            description:"Berdiri tegak dengan kedua tangan di tembok dan kaki sedikit lebih lebar dari bahu."
            "Turunkan badan sampai kedua peha sejajar dengan lantai. Angkat kedua tumit naik dan turun."
            
            
            
          
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
              child: new Image.asset('images/JongkokSumo.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('21. Jongkok Sumo Angkat Betis di Tembok'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => JongkokSumoBetisTembokDialog(
            title: "Jongkok Sumo Angkat Betis di Tembok",
            description:"Berdiri tegak dengan kedua tangan di tembok dan kaki sedikit lebih lebar dari bahu."
            "Turunkan badan sampai kedua peha sejajar dengan lantai. Angkat kedua tumit naik dan turun."
            
            
            
          
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
              child: new Image.asset('images/PereganganBetisKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('22. Peregangan Betis Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) => PereganganBetisKiriDialog(
            title: "Peregangan Betis Kiri",
            description:"Berdiri sejauh satu langkah besar menghadap tembok. Maju selangkah dengan kaki kanan dan dorong ke tembok dengan kedua tangan."
            "Pastikan kaki kiri benar benar diluruskan dan betis kiri terasa meregang. Tahan posisi ini selama beberapa detik."
            
            
            
          
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
              child: new Image.asset('images/PereganganBetisKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('23. Peregangan Betis Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganBetisKananDialog(
            title: "Peregangan Betis kanan",
            description:"Berdiri sejauh satu langkah besar menghadap tembok. Maju selangkah dengan kaki kiri dan dorong ke tembok dengan kedua tangan."
            "Pastikan kaki kanan benar benar diluruskan dan betis kanan terasa meregang. Tahan posisi ini selama beberapa detik."
            
            
            
          
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
                  builder:(context) => KakiPemulaSedia(), ));

      }))

    ],
  );
}

class LompatSampingDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  LompatSampingDialog({this.title, this.description, this.buttonText, this.image});

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


class SquatDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  SquatDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Squat.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class AKSBMKKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AKSBMKKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatKakiBaringKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class AKSBMKKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AKSBMKKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatKakiBaringKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class TerjangMundurDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  TerjangMundurDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/TerjangMundur.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class TendanganKeldaiKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  TendanganKeldaiKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/TendangKeldaiKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}


class TendanganKeldaiKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  TendanganKeldaiKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/TendangKeldaiKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganKuadrisepKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganKuadrisepKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganKuadrisepKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganKuadrisepKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganKuadrisepKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganKuadrisepKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganLututkeDadaKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLututkeDadaKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganLututKeDadaKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganLututkeDadaKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLututkeDadaKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganLututKeDadaKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class AngkatBetisMenghadapTembokDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatBetisMenghadapTembokDialog({this.title, this.description, this.buttonText, this.image});

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
        child:  CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/AngkatBetisMenghadapTembok.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class JongkokSumoBetisTembokDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  JongkokSumoBetisTembokDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/JongkokSumo.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganBetisKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganBetisKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganBetisKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class PereganganBetisKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganBetisKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganBetisKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}
























