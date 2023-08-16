import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: IconButton(icon:
      Icon(Icons.arrow_back,size: 30,color: Colors.black87,), onPressed: null),
      centerTitle: false,backgroundColor: Colors.white10 ,elevation: 0,),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Text('Payment Methods',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),),
            SizedBox(height: 30,),

            Container(
              height: 600,
              width: double.infinity,
              child: Stack(alignment: Alignment.topCenter,
                children: <Widget>[

                  Positioned(top: 150,
                    child: Container(
                      height: 450,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10
                          )]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Container(margin: EdgeInsets.only(left: 35),
                              child: Text('Cardholder Name')),
                            SizedBox(height: 10,),
                            Container(margin: EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                fillColor: Colors.grey,
                                labelText: 'Enter Name',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),),
                            ),

                            SizedBox(height: 20,),

                            Container(margin: EdgeInsets.only(left: 35),
                                child: Text('Card Nmuber')),
                            SizedBox(height: 10,),
                            Container(margin: EdgeInsets.only(left: 20,right: 20),
                              child: TextField(
                                keyboardAppearance: Brightness.dark,
                                decoration: InputDecoration(
                                  fillColor: Colors.grey,
                                  labelText: 'Enter Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),),
                            ),
                            SizedBox(height: 25,),
                            Container(margin: EdgeInsets.only(left: 35,right: 80),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Date Exp'),
                                  Text('CVV Code'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(margin: EdgeInsets.only(left: 20),
                                  width: 140,
                                  child: TextField(decoration: InputDecoration(
                                    fillColor: Colors.grey,
                                    labelText: 'Enter Date',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color:Colors.grey),
                                      borderRadius: BorderRadius.circular(20)
                                    )
                                  ),),
                                ),
                                Container(margin: EdgeInsets.only(right: 20),
                                  width: 140,
                                  child: TextField(decoration:InputDecoration(
                                    labelText: 'Enter Code',
                                    fillColor: Colors.grey,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20),
                                    )
                                  ),),
                                )
                              ],
                            ),
                        ],),
                      ),
                    ),
                  ),

                  Positioned(
                    child: Container(
                      height: 200,
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.lime,
                          Colors.cyan
                        ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 15.0
                          )]),
                      child: Center(
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(),
                            Text('03499719922',style: TextStyle(fontSize: 28),),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('hammad ali'),
                                  Text('12/34')
//                              Text('hammad ali'),
//                              Text('ooio')
                              ],),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 30,right: 30,top: 30),
              height: 60,
              width: double.infinity,
              child: Center(child: Text('save'),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),
            )

          ],),
      ),

    );
  }
}
