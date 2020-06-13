import 'package:appsatb/SenamanPage/Menengah/KakiMenengahSedia.dart';
import 'package:appsatb/SenamanPage/MenengahPage.dart';
import 'package:flutter/material.dart';

class KakiMenengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyKakiMenengah(),
    );
  }
}

class MyKakiMenengah extends StatefulWidget {
  @override
  _MyKakiMenengahState createState() => _MyKakiMenengahState();
}

class _MyKakiMenengahState extends State<MyKakiMenengah> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Kaki Menengah'),
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
              child: new Image.asset('images/Squat.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('4. Squat'),
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
              child: new Image.asset('images/FireHydrantKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('5. Fire Hydrant Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => FireHydrantKiriDialog(
            title: "Fire Hydrant Kiri",
            description:"Mulai dalam posisi merangkak denngan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Lalu angkat kaki kiri Anda ke samping dengan lutut ditekuk sejauh mungkin."
            
            
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
              child: new Image.asset('images/FireHydrantKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('6. Fire Hydrant Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => FireHydrantKananDialog(
            title: "Fire Hydrant Kanan",
            description:"Mulai dalam posisi merangkak denngan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Lalu angkat kaki kanan Anda ke samping dengan lutut ditekuk sejauh mungkin."
            
            
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
              child: new Image.asset('images/FireHydrantKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('7. Fire Hydrant Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => FireHydrantKiriDialog(
            title: "Fire Hydrant Kiri",
            description:"Mulai dalam posisi merangkak denngan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Lalu angkat kaki kiri Anda ke samping dengan lutut ditekuk sejauh mungkin."
            
            
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
              child: new Image.asset('images/FireHydrantKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('8. Fire Hydrant Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => FireHydrantKananDialog(
            title: "Fire Hydrant Kanan",
            description:"Mulai dalam posisi merangkak denngan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Lalu angkat kaki kanan Anda ke samping dengan lutut ditekuk sejauh mungkin."
            
            
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
              child: new Image.asset('images/FireHydrantKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('9. Fire Hydrant Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => FireHydrantKiriDialog(
            title: "Fire Hydrant Kiri",
            description:"Mulai dalam posisi merangkak denngan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Lalu angkat kaki kiri Anda ke samping dengan lutut ditekuk sejauh mungkin."
            
            
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
              child: new Image.asset('images/FireHydrantKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('10. Fire Hydrant Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => FireHydrantKananDialog(
            title: "Fire Hydrant Kanan",
            description:"Mulai dalam posisi merangkak denngan lutut di bawah bokong dan tangan di bawah bahu langsung."
            "Lalu angkat kaki kanan Anda ke samping dengan lutut ditekuk sejauh mungkin."
            
            
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
              child: new Image.asset('images/Lunge.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('11. Lunge'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => LungeDialog(
            title: "Lunge",
            description:"Berdiri dan langkahkan kaki kanan ke belakang sejauh mungkin."
            "Kemudian, tekuk kaki kiri Anda dan turunkan tubuh. Jaga akar kaki kanann tetap lurus."
            "Kembali dan ulang semula dengan sisi lainnya."
            "Latihan Lunge memperkuat otot kuadrisep, otot gluteus maksimus dan tendon harmstring."
            
            
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
              child: new Image.asset('images/Lunge.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('12. Lunge'),
        subtitle: Text('x 14'),
        onTap: () {

           showDialog(context: context, builder: (context) => LungeDialog(
            title: "Lunge",
            description:"Berdiri dan langkahkan kaki kanan ke belakang sejauh mungkin."
            "Kemudian, tekuk kaki kiri Anda dan turunkan tubuh. Jaga akar kaki kanann tetap lurus."
            "Kembali dan ulang semula dengan sisi lainnya."
            "Latihan Lunge memperkuat otot kuadrisep, otot gluteus maksimus dan tendon harmstring."
            
            
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
              child: new Image.asset('images/SisiLingkaranKakiKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('13. Sisi Lingkaran Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKiriDialog(
            title: "Sisi Lingkaran Kaki Kiri",
            description:"Berbaring di sisi kanan, dengan kepala yang bertumpu pada tangan kanan Anda."
            "Kemudian, angkat kaki kiri atas dan pusing kaki dalam lingkaran"
           
            
            
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
              child: new Image.asset('images/SisiLingkaranKakiKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('14. Sisi Lingkaran Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => SisiLingkaranKakiKananDialog(
            title: "Sisi Lingkaran Kaki Kanan",
            description:"Berbaring di sisi kiri, dengan kepala yang bertumpu pada tangan kiri Anda."
            "Kemudian, angkat kaki kanan atas dan pusing kaki dalam lingkaran"
           
            
            
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
              child: new Image.asset('images/SisiLingkaranKakiKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('15. Sisi Lingkaran Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKiriDialog(
            title: "Sisi Lingkaran Kaki Kiri",
            description:"Berbaring di sisi kanan, dengan kepala yang bertumpu pada tangan kanan Anda."
            "Kemudian, angkat kaki kiri atas dan pusing kaki dalam lingkaran"
           
            
            
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
              child: new Image.asset('images/SisiLingkaranKakiKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('16. Sisi Lingkaran Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => SisiLingkaranKakiKananDialog(
            title: "Sisi Lingkaran Kaki Kanan",
            description:"Berbaring di sisi kiri, dengan kepala yang bertumpu pada tangan kiri Anda."
            "Kemudian, angkat kaki kanan atas dan pusing kaki dalam lingkaran"
           
            
            
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
              child: new Image.asset('images/JongkokSumo2.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('17. Jongkok Sumo '),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => JongkokSumoDialog(
            title: "Jongkok Sumo",
            description:"Berdiri dengan kedua kaki terpisah sejauh 6 hingga 12 inci. Luruskan kedua lengan ke depan."
            "Turunkan badan sampai kedua peha sejajar dengan lantai. Kembali ke posisi awal dan ulang semula."
           
            
            
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
              child: new Image.asset('images/JongkokSumo2.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('18. Jongkok Sumo '),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => JongkokSumoDialog(
            title: "Jongkok Sumo",
            description:"Berdiri dengan kedua kaki terpisah sejauh 6 hingga 12 inci. Luruskan kedua lengan ke depan."
            "Turunkan badan sampai kedua peha sejajar dengan lantai. Kembali ke posisi awal dan ulang semula."
           
            
            
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
              child: new Image.asset('images/JongkokSumo2.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('19. Jongkok Sumo '),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => JongkokSumoDialog(
            title: "Jongkok Sumo",
            description:"Berdiri dengan kedua kaki terpisah sejauh 6 hingga 12 inci. Luruskan kedua lengan ke depan."
            "Turunkan badan sampai kedua peha sejajar dengan lantai. Kembali ke posisi awal dan ulang semula."
           
            
            
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
              child: new Image.asset('images/TendangRinganBalik.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('20. Tendang Ringan Balik'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => TendangRinganBalikDialog(
            title: "Tendang Ringan Balik",
            description:"Tengkurap di atas bangku, posisikan bokong di tepi bangku dan berpeganglah pada sambping bangku dan berpeganglah pada sisi samping bangku"
            "Kemudian angkat kedua kaiki Anda hingga sejajar dengan badan Anda. Angkat satu kaki lebih tinggi dan turunkan."
            "Kemudian ganti dengan sisi yang lain."
           
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
              child: new Image.asset('images/TendangRinganBalik.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('21. Tendang Ringan Balik'),
        subtitle: Text('x 12'),
        onTap: () {

          
          showDialog(context: context, builder: (context) => TendangRinganBalikDialog(
            title: "Tendang Ringan Balik",
            description:"Tengkurap di atas bangku, posisikan bokong di tepi bangku dan berpeganglah pada sambping bangku dan berpeganglah pada sisi samping bangku"
            "Kemudian angkat kedua kaiki Anda hingga sejajar dengan badan Anda. Angkat satu kaki lebih tinggi dan turunkan."
            "Kemudian ganti dengan sisi yang lain."
           
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
              child: new Image.asset('images/TendangRinganBalik.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('22. Tendang Ringan Balik'),
        subtitle: Text('x 12'),
        onTap: () {

          
          showDialog(context: context, builder: (context) => TendangRinganBalikDialog(
            title: "Tendang Ringan Balik",
            description:"Tengkurap di atas bangku, posisikan bokong di tepi bangku dan berpeganglah pada sambping bangku dan berpeganglah pada sisi samping bangku"
            "Kemudian angkat kedua kaiki Anda hingga sejajar dengan badan Anda. Angkat satu kaki lebih tinggi dan turunkan."
            "Kemudian ganti dengan sisi yang lain."
           
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
              child: new Image.asset('images/DudukDIDinding.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('23. Duduk Di Dinding'),
        subtitle: Text('00:30'),
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
        title: Text('24. Peregangan Kuadrisep Kiri Di Tembok'),
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
        title: Text('25. Peregangan Kuadrisep Kanan Di Tembok'),
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
              child: new Image.asset('images/PereganganLututKeDadaKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('26. Peregangan Lutut Ke Dada Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLututKeDadaKiriDialog(
            title: "Peregangan Lutut Ke Dada Kiri",
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
        title: Text('27. Peregangan Lutut Ke Dada Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganLututKeDadaKananDialog(
            title: "Peregangan Lutut Ke Dada Kanan",
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
              child: new Image.asset('images/AngkatBetisTerentang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('28. Angkat Betis Dengan Kaki Terentang'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBetisDenganKakiTerentangDialog(
            title: "Angkat Betis Dengan Kaki Terentang",
            description:"Berdiri dengan kaki selebar bahu. Letakkan kedua tangan di tembok untuk menjaga keseimbangan."
            "Pusingkan kedua pergelangan kaki sampai jari jari kaki menghadap ke luar, kemudian angkat kedua tumit naik dan turun."
           
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
              child: new Image.asset('images/AngkatBetisTerentang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('29. Angkat Betis Dengan Kaki Terentang'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBetisDenganKakiTerentangDialog(
            title: "Angkat Betis Dengan Kaki Terentang",
            description:"Berdiri dengan kaki selebar bahu. Letakkan kedua tangan di tembok untuk menjaga keseimbangan."
            "Pusingkan kedua pergelangan kaki sampai jari jari kaki menghadap ke luar, kemudian angkat kedua tumit naik dan turun."
           
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
              child: new Image.asset('images/AngkatBetisTerentang.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('30. Angkat Betis Dengan Kaki Terentang'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => AngkatBetisDenganKakiTerentangDialog(
            title: "Angkat Betis Dengan Kaki Terentang",
            description:"Berdiri dengan kaki selebar bahu. Letakkan kedua tangan di tembok untuk menjaga keseimbangan."
            "Pusingkan kedua pergelangan kaki sampai jari jari kaki menghadap ke luar, kemudian angkat kedua tumit naik dan turun."
           
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
              child: new Image.asset('images/LompatBetisKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('31. Lompat Betis Satu Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatBetisSatuKakiKiriDialog(
            title: "Lompat Betis Satu Kaki Kiri",
            description:"Berdiri tegak dengan kaki kanan diangkat. Kemudian melompatlah naik dan turun denan kaki kiri."
            
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
              child: new Image.asset('images/LompatBetisKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('32. Lompat Betis Satu Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatBetisSatuKakiKananDialog(
            title: "Lompat Betis Satu Kaki Kanan",
            description:"Berdiri tegak dengan kaki kiri diangkat. Kemudian melompatlah naik dan turun denan kaki kiri."
            
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
              child: new Image.asset('images/LompatBetisKiri.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('33. Lompat Betis Satu Kaki Kiri'),
        subtitle: Text('x 12'),
        onTap: () {

           showDialog(context: context, builder: (context) => LompatBetisSatuKakiKiriDialog(
            title: "Lompat Betis Satu Kaki Kiri",
            description:"Berdiri tegak dengan kaki kanan diangkat. Kemudian melompatlah naik dan turun denan kaki kiri."
            
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
              child: new Image.asset('images/LompatBetisKanan.gif'
              , fit: BoxFit.fill,))
          ),
        ),
        title: Text('34. Lompat Betis Satu Kaki Kanan'),
        subtitle: Text('x 12'),
        onTap: () {

          showDialog(context: context, builder: (context) => LompatBetisSatuKakiKananDialog(
            title: "Lompat Betis Satu Kaki Kanan",
            description:"Berdiri tegak dengan kaki kiri diangkat. Kemudian melompatlah naik dan turun denan kaki kiri."
            
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
        title: Text('35. Peregangan Betis Kiri'),
        subtitle: Text('00:30'),
        onTap: () {

          showDialog(context: context, builder: (context) => PereganganBetisKiriDialog(
            title: "Peregangan Betis Kiri",
            description:"Berdiri sejauh satu langkah besar menghadaptembok. Maju selangkah dengan kaki kanan dan dorong tembok dengan kedua tangan."
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
        title: Text('36. Peregangan Betis Kanan'),
        subtitle: Text('00:30'),
        onTap: () {

           showDialog(context: context, builder: (context) => PereganganBetisKananDialog(
            title: "Peregangan Betis Kanan",
            description:"Berdiri sejauh satu langkah besar menghadaptembok. Maju selangkah dengan kaki kiri dan dorong tembok dengan kedua tangan."
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
                  builder:(context) => KakiMenengahSedia(), ));

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
        child:CircleAvatar(
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

class FireHydrantKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  FireHydrantKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/FireHydrantKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class FireHydrantKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  FireHydrantKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/FireHydrantKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class LungeDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  LungeDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/Lunge.gif'),)
          ),
          radius: 50,
        ) 
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
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/SisiLingkaranKakiKiri.gif'),)
          ),
          radius: 50,
        ) 
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
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/SisiLingkaranKakiKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class JongkokSumoDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  JongkokSumoDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/JongkokSumo2.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class TendangRinganBalikDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  TendangRinganBalikDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/TendangRinganBalik.gif'),)
          ),
          radius: 50,
        ) 
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
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 100,
              height: 100,
              child: new Image.asset('images/DudukDiDinding.gif'),)
          ),
          radius: 50,
        ) 
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

class PereganganLututKeDadaKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLututKeDadaKiriDialog({this.title, this.description, this.buttonText, this.image});

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

class PereganganLututKeDadaKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  PereganganLututKeDadaKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/PereganganLututKeDadaKanan.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class AngkatBetisDenganKakiTerentangDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  AngkatBetisDenganKakiTerentangDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/AngkatBetisTerentang.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class LompatBetisSatuKakiKiriDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  LompatBetisSatuKakiKiriDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/LompatBetisKiri.gif'),)
          ),
          radius: 50,
        ) 
        )
      ]
    );
  }
}

class LompatBetisSatuKakiKananDialog extends StatelessWidget {

  final String title, description, buttonText;
  final Image image;

  LompatBetisSatuKakiKananDialog({this.title, this.description, this.buttonText, this.image});

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
              child: new Image.asset('images/LompatBetisKanan.gif'),)
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






