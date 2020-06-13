import 'package:appsatb/HomePage/HomePage.dart';
import 'package:appsatb/Pedometer/mainPedometer.dart';
import 'package:appsatb/SenamanPage/SenamanPage.dart';
import 'package:flutter/material.dart';
import 'package:appsatb/BMIPage/WidgetUtils/widget_utilsBMI.dart' show screenAwareSize;
import 'package:appsatb/BMIPage/Height/HeightCard.dart';
import 'package:appsatb/BMIPage/inputSummary/inputSummary.dart';
import 'package:appsatb/BMIPage/bottomBar/pacmanSlider.dart';
import 'package:appsatb/BMIPage/bottomBar/TransitionDots.dart';
import 'package:appsatb/BMIPage/Calculator/calculator.dart' as calculator;
import 'package:appsatb/BMIPage/Route/FadeRoute.dart';
import 'package:appsatb/BMIPage/Weight/WeightCard.dart';
import 'package:appsatb/BMIPage/SavedBMIData/bmiList.dart';
import 'package:appsatb/calorieCounter.dart';
import 'package:appsatb/SleepPage/mainSleepPage.dart';




class BMIPage extends StatefulWidget{
  @override
  State createState() {
    return new BMIPageState();
  }

}
class BMIPageState extends State<BMIPage> with TickerProviderStateMixin{

  int height = 170;
  int weight = 70;

  AnimationController submitAnimationController;
 
  
  @override
  void initState() {
    super.initState();
    submitAnimationController = AnimationController(vsync: this,duration: Duration(seconds: 2));
    submitAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _goToResultPage().then((_) => submitAnimationController.reset());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
         backgroundColor: Colors.white70,
         appBar: AppBar(title: Text("KalkulatorBMI"),),
         drawer:  Drawer(
          child: Column(
            children: <Widget> [
              UserAccountsDrawerHeader(accountName: Text("Selamat Datang"), 
              accountEmail: null),
              ListTile(
              title: Text("Laman Utama"),
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => HomePage(), ));
               
                  
              },
              ),
              ListTile(title: Text("Kalkulator BMI",),
              onTap: (){
              

                
              },),
              ListTile(
                title: Text("Pedometer"),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MyPedometer(), ));

                },
              ),
              ListTile(
                title: Text("Senaman"),
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => SenamanPage(), ));

                },
              ),
              ListTile(
                title: Text("Kalori"),
                onTap: (){

                   Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => CalorieCounter(), ));

                  

                },
              ),
               ListTile(
                title: Text("Waktu Rehat"),
                
                onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                  builder:(context) => MainSleepPage(), ));

                  
                },
              ),
              // ListTile(
              //  title: Text("Kadar Degupan Jantung"),
              //  onTap: (){
                  
             //   },
             // ),

            
            //  Divider(),
          //    Expanded(child: 
           //   Align(alignment: Alignment.bottomCenter,
           //   child: ListTile(
           //     title: Text("Log Keluar"),
                
            //  ),))
              
            ]
          ),
        ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InputSummaryCard(
                
                weight: weight,
                height: height,
              ),
              Expanded(child: _buildCards(context)),
              _buildBottom(context), _buttonBMIList(context)
            ],
          ),
        ),
        TransitionDot(animation:submitAnimationController),
      ],
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenAwareSize(16.0, context),
        right: screenAwareSize(16.0, context),
        bottom: screenAwareSize(16.0, context),
        top: screenAwareSize(16.0, context),
      ),
      child: Container(
        height: screenAwareSize(45.0, context),
        child: PacmanSlider(
          onSubmit: onPacmanSubmit,
          submitAnimationController: submitAnimationController,
        ),
      ),
    );
  }

  Widget _buttonBMIList(BuildContext context) {

    return Padding(padding: EdgeInsets.only(top: 1.0, bottom: 15.0),
					    child: Row(
						    children: <Widget>[
						    	Expanded(
								    child: RaisedButton(
									    color: Colors.indigoAccent,
									    textColor: Colors.white,
									    child: Text(
										    'Data BMI',
										    textScaleFactor: 2.5,
									    ),
									    onPressed: () {
									    	setState(() {
									    	  debugPrint("button clicked");
                          _goToBMIData();
									    	  
									    	});
									    },
								    ),
							    )]));

  }



  Widget _buildCards(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: WeightCard(
                initialWeight: weight,
                onChanged: (val) => setState(() => weight = val),
              )),
            ],
          ),
        ),
        Expanded(
          child: HeightCard(
            height: height,
            onChanged: (val) => setState(() => height = val),
          ),
        )
      ],
    );
  }

  void onPacmanSubmit() {
    submitAnimationController.forward();
  }



  _goToResultPage() async {
    return Navigator.of(context).push(FadeRoute(
      builder: (context) => ResultPage(
        weight: weight,
        height: height,
        
      ),
    ));
  }

 _goToBMIData() async {
    return Navigator.of(context).push(FadeRoute(
      builder: (context) => BmiList(
       
        
      ),
    ));
  }

 


  @override
  void dispose() {
    submitAnimationController.dispose();
    super.dispose();
  }

  
 
}

class ResultPage extends StatefulWidget {
  final int height;
  final int weight;
  
 
  

  const ResultPage({Key key,  this.height, this.weight})
      : super(key: key);


  @override
  _ResultPageState createState() => _ResultPageState();
  
}

class _ResultPageState extends State<ResultPage> {
  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF00154F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ResultCard(

            bmi: calculator.calculateBMI(
                height: widget.height, weight: widget.weight),
            minWeight:
            calculator.calculateMinNormalWeight(height: widget.height),
            maxWeight:
            calculator.calculateMaxNormalWeight(height: widget.height),
          ),
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.grey,
                size: 28.0,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          Container(
              height: 52.0,
              width: 80.0,
              child: RaisedButton(
                child: Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 28.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () => Navigator.of(context).pop(),
                color: Theme.of(context).primaryColor,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: IconButton(
              icon: Icon(
                Icons.save,
                color: Colors.grey,
                size: 28.0,
              ),
              onPressed: () {
                setState(() {
                  _goToInsertData();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
  _goToInsertData() async {
    return Navigator.of(context).push(FadeRoute(
      builder: (context) => BmiList(),
    ));
  }

}
class ResultCard extends StatelessWidget {
  comment (double bmi){
    if (bmi<18.5)
    return Column(
      children: <Widget>[
              Text(
              'Anda terlalu kurus',
              style: TextStyle(fontSize: 30.0),
            ),
            Text('Anda perlu makan 🥛🥙🥩', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
      ],
    );
    else if (bmi >= 18.5 && bmi < 24.9)
    return Column(
              children: <Widget>[
                Text(
              
              'Anda mempunyai kadar bmi yang normal',
              style: TextStyle(fontSize: 30.0),
            ),
            Text('Teruskan 😍🔥', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              ],
    );
    else if (bmi >= 24.9 && bmi < 29.9 )
     return Column(
              children: <Widget>[
                Text(
              
              'Berat anda berlebihan',
              style: TextStyle(fontSize: 30.0),
            ),
            Text('Anda perlu mengamalkan pemakanan yang sihat 🥕🍅🍆', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              ],
    );
    if ( bmi >= 30) 
     return Column(
              children: <Widget>[
                Text(
              
              'Obesiti',
              style: TextStyle(fontSize: 30.0),
            ),
            Text('Anda harus rajin bersenam 🏃‍💪🏋️', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              ],
    );
      
    
  }
  final double bmi;
  final double minWeight;
  final double maxWeight;

  ResultCard({Key key, this.bmi, this.minWeight, this.maxWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Container(
          width: double.infinity,
          child: Column(children: [
           
            comment(bmi),
         
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(fontSize: 140.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'BMI = ${bmi.toStringAsFixed(2)} kg/m²',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Berat BMI Normal untuk ketinggian:\n${minWeight
                    .round()}kg - ${maxWeight.round()}kg',
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
        
          ]),
          
        ),
        
      ),
      
    );
  
  }
  
}