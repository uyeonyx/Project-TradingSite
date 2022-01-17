import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    const greencolor = Color(0xFF2fc38d);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            child:Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.table_chart,
                size:width*0.05,
              ),
              Padding(
               padding: EdgeInsets.only(right: width*0.025),
              ),
              Text('SMARTrader'),
            ],
          ), 
        ),
          backgroundColor: greencolor,
          leading:Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/stock.jpeg',
                width: width*0.5,
              ),
            ),
            Padding(padding: EdgeInsets.all(width*0.024),
            ),
            RichText(
              text: TextSpan(
                text: 'SMART',
                style: TextStyle(
                  fontSize: width*0.06,
                  color: greencolor,
                  fontWeight: FontWeight.bold,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text:'rader',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Text(
              '스마트한 트레이더를 위한 단 하나의 토탈 솔루션 플랫폼',
              style: TextStyle(color: Colors.grey,fontSize: width*0.03),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(width*0.048),
            ),
            RaisedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("RaisedButton 클릭됨");
                },
                color: greencolor,
                child: Text("시작하기",style: TextStyle(color: Colors.white, fontSize: width*0.04),),
                // 그림자 효과
                elevation: 10,
                // 테두리 모서리
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.fromLTRB(width*0.08, width*0.032, width*0.08, width*0.032),
            ),
            Padding(padding: EdgeInsets.all(width*0.048),
            ),
            _buildStep(width, '국내주식 : KOSPI, KOSDAQ'),
            _buildStep(width, '해외주식 : NYSE, NASDAQ, AMEX'),
            _buildStep(width, '가상자산 : BiTCoin, Ethereum, ETC..'),
          ],
        )
      ),
    );
  }
  Widget _buildStep(double width, String title){
    return Container(
      padding: EdgeInsets.fromLTRB(
        width*0.048, 
        width*0.024, 
        width*0.048, 
        width*0.024,
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: width*0.065),
        ),
        Icon(
          Icons.tab,
          size:width*0.04,
        ),
        Padding(
          padding: EdgeInsets.only(right: width*0.02),
        ),
        Text(title,
        style:TextStyle(
                fontSize: width*0.038,
              ),),
        ],
      ),
    );
  }
}