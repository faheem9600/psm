import 'package:appsatb/SenamanPage/Lanjutan/KakiLanjutanSedia.dart';
import 'package:appsatb/SenamanPage/LanjutanPage.dart';
import 'package:flutter/material.dart';

class KakiLanjutan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyKakiLanjutan(),
    );
  }
}

class MyKakiLanjutan extends StatefulWidget {
  @override
  _MyKakiLanjutanState createState() => _MyKakiLanjutanState();
}

class _MyKakiLanjutanState extends State<MyKakiLanjutan> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Kaki Lanjutan'),
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
        leading:  CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/Burpee.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('1. Burpee'),
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
        title: Text('2. Squat'),
        subtitle: Text('x 14'),
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
        leading:CircleAvatar(
          
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
        subtitle: Text('x 14'),
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
              child: new Image.asset('images/Squat.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Squat'),
        subtitle: Text('x 14'),
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
              child: new Image.asset('images/AngkatBawahKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Angkat Bahagian Bawah Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBahagianBawahKakiKiriDialog(
            title: "Angkat Bahagian Bawah Kaki Kiri",
            description:"Berbaring di kiri sisi, dengan kepala bertumpu pada tangan kiri Anda."
            "Kemudian letakkan paling atas kanan kaki membungkuk ke depan di tanah, dan mengangkat paling bawah kaki kiri Anda naik dan turun."
            
            
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
              child: new Image.asset('images/AngkatBawahKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Angkat Bahagian Bawah Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => AngkatBahagianBawahKakiKananDialog(
            title: "Angkat Bahagian Bawah Kaki Kanan",
            description:"Berbaring di kanan sisi, dengan kepala bertumpu pada tangan kanan Anda."
            "Kemudian letakkan paling atas kiri kaki membungkuk ke depan di tanah, dan mengangkat paling bawah kaki kanan Anda naik dan turun."
            
            
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
              child: new Image.asset('images/AngkatBawahKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Angkat Bahagian Bawah Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBahagianBawahKakiKiriDialog(
            title: "Angkat Bahagian Bawah Kaki Kiri",
            description:"Berbaring di kiri sisi, dengan kepala bertumpu pada tangan kiri Anda."
            "Kemudian letakkan paling atas kanan kaki membungkuk ke depan di tanah, dan mengangkat paling bawah kaki kiri Anda naik dan turun."
            
            
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
              child: new Image.asset('images/AngkatBawahKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Angkat Bahagian Bawah Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBahagianBawahKakiKananDialog(
            title: "Angkat Bahagian Bawah Kaki Kanan",
            description:"Berbaring di kanan sisi, dengan kepala bertumpu pada tangan kanan Anda."
            "Kemudian letakkan paling atas kiri kaki membungkuk ke depan di tanah, dan mengangkat paling bawah kaki kanan Anda naik dan turun."
            
            
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
              child: new Image.asset('images/AngkatBawahKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Angkat Bahagian Bawah Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBahagianBawahKakiKiriDialog(
            title: "Angkat Bahagian Bawah Kaki Kiri",
            description:"Berbaring di kiri sisi, dengan kepala bertumpu pada tangan kiri Anda."
            "Kemudian letakkan paling atas kanan kaki membungkuk ke depan di tanah, dan mengangkat paling bawah kaki kiri Anda naik dan turun."
            
            
            ,
          ));

        },
      ),  ListTile(
        leading: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/AngkatBawahKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Angkat Bahagian Bawah Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => AngkatBahagianBawahKakiKananDialog(
            title: "Angkat Bahagian Bawah Kaki Kanan",
            description:"Berbaring di kanan sisi, dengan kepala bertumpu pada tangan kanan Anda."
            "Kemudian letakkan paling atas kiri kaki membungkuk ke depan di tanah, dan mengangkat paling bawah kaki kanan Anda naik dan turun."
            
            
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
              child: new Image.asset('images/Bungkuk.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Bungkukkan Badan'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => BungkukkanBadanDialog(
            title: "Bungkukkan Badan",
            description:"Berdiri lurus. Kemudian kaki kiri melangkah mundur ke kanan, dan melekuk lutut pada saat yang sama."
            "Kembali ke posisi berdiri, dan beralih ke sisi yang lain."
            
            
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
              child: new Image.asset('images/Bungkuk.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Bungkukkan Badan'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => BungkukkanBadanDialog(
            title: "Bungkukkan Badan",
            description:"Berdiri lurus. Kemudian kaki kiri melangkah mundur ke kanan, dan melekuk lutut pada saat yang sama."
            "Kembali ke posisi berdiri, dan beralih ke sisi yang lain."
            
            
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
              child: new Image.asset('images/Bungkuk.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Bungkukkan Badan'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => BungkukkanBadanDialog(
            title: "Bungkukkan Badan",
            description:"Berdiri lurus. Kemudian kaki kiri melangkah mundur ke kanan, dan melekuk lutut pada saat yang sama."
            "Kembali ke posisi berdiri, dan beralih ke sisi yang lain."
            
            
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
              child: new Image.asset('images/SisiLingkaranKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Sisi Lingkaran Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKiriDialog(
            title: "Sisi Lingkaran Kaki Kiri",
            description:"Berbaring di sisi kanan, dengan kepala bertumpu pada tangan kanan Anda."
            "Kemudian angkat kaki kiri atas dan pusingkan kaki dalam lingkaran."
            
            
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
              child: new Image.asset('images/SisiLingkaranKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Sisi Lingkaran Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => SisiLingkaranKakiKananDialog(
            title: "Sisi Lingkaran Kaki Kanan",
            description:"Berbaring di sisi kiri, dengan kepala bertumpu pada tangan kiri Anda."
            "Kemudian angkat kaki kanan atas dan pusingkan kaki dalam lingkaran."
            
            
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
              child: new Image.asset('images/SisiLingkaranKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Sisi Lingkaran Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKiriDialog(
            title: "Sisi Lingkaran Kaki Kiri",
            description:"Berbaring di sisi kanan, dengan kepala bertumpu pada tangan kanan Anda."
            "Kemudian angkat kaki kiri atas dan pusingkan kaki dalam lingkaran."
            
            
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
              child: new Image.asset('images/SisiLingkaranKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('17. Sisi Lingkaran Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKananDialog(
            title: "Sisi Lingkaran Kaki Kanan",
            description:"Berbaring di sisi kiri, dengan kepala bertumpu pada tangan kiri Anda."
            "Kemudian angkat kaki kanan atas dan pusingkan kaki dalam lingkaran."
            
            
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
              child: new Image.asset('images/SisiLingkaranKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('18. Sisi Lingkaran Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKiriDialog(
            title: "Sisi Lingkaran Kaki Kiri",
            description:"Berbaring di sisi kanan, dengan kepala bertumpu pada tangan kanan Anda."
            "Kemudian angkat kaki kiri atas dan pusingkan kaki dalam lingkaran."
            
            
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
              child: new Image.asset('images/SisiLingkaranKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('19. Sisi Lingkaran Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKananDialog(
            title: "Sisi Lingkaran Kaki Kanan",
            description:"Berbaring di sisi kiri, dengan kepala bertumpu pada tangan kiri Anda."
            "Kemudian angkat kaki kanan atas dan pusingkan kaki dalam lingkaran."
            
            
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
              child: new Image.asset('images/LJongkok.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('20. Lompat Jongkok'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatJongkokDialog(
            title: "Lompat Jongkok",
            description:"Mulai dengan posisi jongkok, kemudian lompat dengan kekuatan perut, lalu kembali ke posisi jongkok lagi."
            "Latihan ini untuk meregangkan seluruh tubuhdan perut Anda."
            
            
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
              child: new Image.asset('images/LJongkok.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('21. Lompat Jongkok'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatJongkokDialog(
            title: "Lompat Jongkok",
            description:"Mulai dengan posisi jongkok, kemudian lompat dengan kekuatan perut, lalu kembali ke posisi jongkok lagi."
            "Latihan ini untuk meregangkan seluruh tubuhdan perut Anda."
            
            
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
              child: new Image.asset('images/LJongkok.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('22. Lompat Jongkok'),
        subtitle: Text('x 14'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatJongkokDialog(
            title: "Lompat Jongkok",
            description:"Mulai dengan posisi jongkok, kemudian lompat dengan kekuatan perut, lalu kembali ke posisi jongkok lagi."
            "Latihan ini untuk meregangkan seluruh tubuhdan perut Anda."
            
            
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
              child: new Image.asset('images/KiriTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('23. Kiri Tendang Ke Belakang Tangan Di Lantai'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => KiriTendangKeBelakangTanganDiLantaiDialog(
            title: "Kiri Tendang Ke Belakang Tangan Di Lantai",
            description:"Mulai dengan posisi merangkak dengan lutut di tekuk di bawah bokong dan tangan lurus dengan bahu."
            "kemudian tendangkan satu kaki ke belakang sejauh mungkin, dan kembali ke posisi semula."
            
            
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
              child: new Image.asset('images/KananTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('24. Kanan Tendang Ke Belakang Tangan Di Lantai'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => KananTendangKeBelakangTanganDiLantaiDialog(
            title: "Kanan Tendang Ke Belakang Tangan Di Lantai",
            description:"Mulai dengan posisi merangkak dengan lutut di tekuk di bawah bokong dan tangan lurus dengan bahu."
            "kemudian tendangkan satu kaki ke belakang sejauh mungkin, dan kembali ke posisi semula."
            
            
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
              child: new Image.asset('images/KiriTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('25. Kiri Tendang Ke Belakang Tangan Di Lantai'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => KiriTendangKeBelakangTanganDiLantaiDialog(
            title: "Kiri Tendang Ke Belakang Tangan Di Lantai",
            description:"Mulai dengan posisi merangkak dengan lutut di tekuk di bawah bokong dan tangan lurus dengan bahu."
            "kemudian tendangkan satu kaki ke belakang sejauh mungkin, dan kembali ke posisi semula."
            
            
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
              child: new Image.asset('images/KananTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('26. Kanan Tendang Ke Belakang Tangan Di Lantai'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => KananTendangKeBelakangTanganDiLantaiDialog(
            title: "Kanan Tendang Ke Belakang Tangan Di Lantai",
            description:"Mulai dengan posisi merangkak dengan lutut di tekuk di bawah bokong dan tangan lurus dengan bahu."
            "kemudian tendangkan satu kaki ke belakang sejauh mungkin, dan kembali ke posisi semula."
            
            
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
              child: new Image.asset('images/KiriTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('27. Kiri Tendang Ke Belakang Tangan Di Lantai'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => KiriTendangKeBelakangTanganDiLantaiDialog(
            title: "Kiri Tendang Ke Belakang Tangan Di Lantai",
            description:"Mulai dengan posisi merangkak dengan lutut di tekuk di bawah bokong dan tangan lurus dengan bahu."
            "kemudian tendangkan satu kaki ke belakang sejauh mungkin, dan kembali ke posisi semula."
            
            
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
              child: new Image.asset('images/KananTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('28. Kanan Tendang Ke Belakang Tangan Di Lantai'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => KananTendangKeBelakangTanganDiLantaiDialog(
            title: "Kanan Tendang Ke Belakang Tangan Di Lantai",
            description:"Mulai dengan posisi merangkak dengan lutut di tekuk di bawah bokong dan tangan lurus dengan bahu."
            "kemudian tendangkan satu kaki ke belakang sejauh mungkin, dan kembali ke posisi semula."
            
            
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
              child: new Image.asset('images/DudukDiDinding.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('29. Duduk Di Dinding'),
        subtitle: Text('00:40'),
        onTap: () {

          showDialog(context: context, builder: (context) => DudukDiDindingDialog(
            title: "Duduk Di Dinding",
            description:"Duduk dengan punggung bersandar ke dinding seolah olah ada kerusi atau bangku. Pertahankan posisi itu."
            "Latihan ini untuk memperkuatkan otot kuadrisep."
            
           
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
              child: new Image.asset('images/PereganganKuadrisepKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('30. Peregangan Kuadrisep Kiri di Tembok'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) => PereganganKuadrisepKiriDiTembokDialog(
            title: "Peregangan Kuadrisep Kiri Di Tembok",
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
        title: Text('31. Peregangan Kuadrisep Kanan di Tembok'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganKuadrisepKananDiTembokDialog(
            title: "Peregangan Kuadrisep Kanan Di Tembok",
            description:"Berdiri dengan tangan kiri di tembok."
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
              child: new Image.asset('images/KupuKupu.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('32. Peregangan Kupu Kupu Berbaring'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganKupuKupuBerbaringDialog(
            title: "Peregangan Kupu Kupu Berbaring",
            description:"Berbaring di lantai dengan kedua kaki disatukan. Buka lutut ke samping. Tahan posisi ini."
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
              child: new Image.asset('images/TanduSandar.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('33. Angkat Posisi Tandu Bersandar'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatPosisiTanduBersandarDialog(
            title: "Angkat Posisi Tandu Bersandar",
            description:"Berdiri sejauh satu langkah besar dari tembok, letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat kedua tumit setinggi mungkin lalu turunkan. Ulang semula latihannya."
            
           
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
              child: new Image.asset('images/TanduSandar.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('34. Angkat Posisi Tandu Bersandar'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatPosisiTanduBersandarDialog(
            title: "Angkat Posisi Tandu Bersandar",
            description:"Berdiri sejauh satu langkah besar dari tembok, letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat kedua tumit setinggi mungkin lalu turunkan. Ulang semula latihannya."
            
           
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
              child: new Image.asset('images/TanduSandar.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('35. Angkat Posisi Tandu Bersandar'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatPosisiTanduBersandarDialog(
            title: "Angkat Posisi Tandu Bersandar",
            description:"Berdiri sejauh satu langkah besar dari tembok, letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat kedua tumit setinggi mungkin lalu turunkan. Ulang semula latihannya."
            
           
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
              child: new Image.asset('images/TahanTembokKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('36. Tahan Tembok Angkat Betis Satu Kaki Kiri '),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TahanTembokAngkatBetisSatuKakiKiriDialog(
            title: "Tahan Tembok Angkat Betis Satu Kaki Kiri",
            description:"Berdiri sejauh satu langkah besar dari tembok. Letakkan kaki kanan di pergelangan kaki kiri."
            "Letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat tumit kiri setinggi mungkin kemudian turunkan. Ulang semula latihannya."
           
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
              child: new Image.asset('images/TahanTembokKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('37. Tahan Tembok Angkat Betis Satu Kaki Kanan'),
        subtitle: Text('x 16'),
        onTap: () {

           showDialog(context: context, builder: (context) => TahanTembokAngkatBetisSatuKakiKananDialog(
            title: "Tahan Tembok Angkat Betis Satu Kaki Kanan",
            description:"Berdiri sejauh satu langkah besar dari tembok. Letakkan kaki kiri di pergelangan kaki kanan."
            "Letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat tumit kanan setinggi mungkin kemudian turunkan. Ulang semula latihannya."
           
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
              child: new Image.asset('images/TahanTembokKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('38. Tahan Tembok Angkat Betis Satu Kaki Kiri'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TahanTembokAngkatBetisSatuKakiKiriDialog(
            title: "Tahan Tembok Angkat Betis Satu Kaki Kiri",
            description:"Berdiri sejauh satu langkah besar dari tembok. Letakkan kaki kanan di pergelangan kaki kiri."
            "Letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat tumit kiri setinggi mungkin kemudian turunkan. Ulang semula latihannya."
           
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
              child: new Image.asset('images/TahanTembokKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('39. Tahan Tembok Angkat Betis Satu Kaki Kanan'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TahanTembokAngkatBetisSatuKakiKananDialog(
            title: "Tahan Tembok Angkat Betis Satu Kaki Kanan",
            description:"Berdiri sejauh satu langkah besar dari tembok. Letakkan kaki kiri di pergelangan kaki kanan."
            "Letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat tumit kanan setinggi mungkin kemudian turunkan. Ulang semula latihannya."
           
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
              child: new Image.asset('images/TahanTembokKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('40. Tahan Tembok Angkat Betis Satu Kaki Kiri'),
        subtitle: Text('x 16'),
        onTap: () {

          showDialog(context: context, builder: (context) => TahanTembokAngkatBetisSatuKakiKiriDialog(
            title: "Tahan Tembok Angkat Betis Satu Kaki Kiri",
            description:"Berdiri sejauh satu langkah besar dari tembok. Letakkan kaki kanan di pergelangan kaki kiri."
            "Letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat tumit kiri setinggi mungkin kemudian turunkan. Ulang semula latihannya."
           
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
              child: new Image.asset('images/TahanTembokKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('41. Tahan Tembok Angkat Betis Satu Kaki Kanan'),
        subtitle: Text('x 16'),
        onTap: () {

           showDialog(context: context, builder: (context) => TahanTembokAngkatBetisSatuKakiKananDialog(
            title: "Tahan Tembok Angkat Betis Satu Kaki Kanan",
            description:"Berdiri sejauh satu langkah besar dari tembok. Letakkan kaki kiri di pergelangan kaki kanan."
            "Letakkan kedua tangan di tembok dan bersandarlah pada tembok."
            "Angkat tumit kanan setinggi mungkin kemudian turunkan. Ulang semula latihannya."
           
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
        title: Text('42. Peregangan Betis Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) => PereganganBetisKiriDialog(
            title: "Peregangan Betis Kiri",
            description:"Berdiri sejauh satu langkah besar menghadap tembok. Maju selangkah dengan kaki kanan dan dorong tembok dengan kedua tangan."
            "Pastikan kaki kiri betul betul diluruskan dan betis kiri terasa meregang. Tahan posisi ini selama beberapa detik."
            
           
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
        title: Text('43. Peregangan Betis Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganBetisKananDialog(
            title: "Peregangan Betis Kanan",
            description:"Berdiri sejauh satu langkah besar menghadap tembok. Maju selangkah dengan kaki kiri dan dorong tembok dengan kedua tangan."
            "Pastikan kaki kanan betul betul diluruskan dan betis kanan terasa meregang. Tahan posisi ini selama beberapa detik."
            
           
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
                  builder:(context) => KakiLanjutanSedia(), ));

      }))

    ],
  );
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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/Burpee.gif'
              , fit: BoxFit.fill,))
          ),
        ),
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
        child: CircleAvatar(
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/Squat.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class AngkatBahagianBawahKakiKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatBahagianBawahKakiKiriDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/AngkatBawahKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}


class AngkatBahagianBawahKakiKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatBahagianBawahKakiKananDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/AngkatBawahKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class BungkukkanBadanDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

   BungkukkanBadanDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/Bungkuk.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}


class SisiLingkaranKakiKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

   SisiLingkaranKakiKiriDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/SisiLingkaranKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}


class SisiLingkaranKakiKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

   SisiLingkaranKakiKananDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/SisiLingkaranKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class LompatJongkokDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  LompatJongkokDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/LJongkok.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class KiriTendangKeBelakangTanganDiLantaiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  KiriTendangKeBelakangTanganDiLantaiDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/KiriTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class KananTendangKeBelakangTanganDiLantaiDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  KananTendangKeBelakangTanganDiLantaiDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/KananTendang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class DudukDiDindingDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  DudukDiDindingDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/DudukDiDinding.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class PereganganKuadrisepKiriDiTembokDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganKuadrisepKiriDiTembokDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganKuadrisepKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class PereganganKuadrisepKananDiTembokDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganKuadrisepKananDiTembokDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganKuadrisepKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class PereganganKupuKupuBerbaringDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganKupuKupuBerbaringDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/KupuKupu.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class AngkatPosisiTanduBersandarDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatPosisiTanduBersandarDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/TanduSandar.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class TahanTembokAngkatBetisSatuKakiKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  TahanTembokAngkatBetisSatuKakiKiriDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/TahanTembokKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}

class TahanTembokAngkatBetisSatuKakiKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  TahanTembokAngkatBetisSatuKakiKananDialog({this.title, this.description, this.buttonText, this.image});

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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/TahanTembokKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganBetisKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
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
          
          radius: 50,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/PereganganBetisKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        )
      ]
    );
  }
}
