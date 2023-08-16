import 'package:flutter/material.dart';
import 'costumcontainer.dart';

enum iconbotton{
  home,
  text,
  location,
  setting,
  none,
}






class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  iconbotton isSelected=iconbotton.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: SafeArea(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    height: 160,
                    width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.black87,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Get Madication Tools ',style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 20,),),
                        SizedBox(height: 5,),
                        Text('Special Discount',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 18)),
                        SizedBox(height: 16,),
                        Text('Save more then 20%',style: TextStyle(color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  ),
                  SizedBox(height: 40,),

                  //Servives............................................

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Service',style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(margin: EdgeInsets.only(left: 20),
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ServiceContainers(icon: Icons.local_hospital,tittle: 'Hospital'),
              SizedBox(width: 10,),
                ServiceContainers(icon: Icons.remove_red_eye,tittle: 'Care'),
                SizedBox(width: 10,),
                ServiceContainers(icon: Icons.library_books,tittle: 'Diagnosis'),
                SizedBox(width: 10,),
                ServiceContainers(icon: Icons.thumb_up,tittle: 'Treatment'),
                SizedBox(width: 10,),
                ServiceContainers(icon: Icons.library_add,tittle: 'Reports'),
                SizedBox(width: 10,),
            ],),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text('Article',style: TextStyle(fontSize: 20),),
             Row(
               children: <Widget>[
                 Text('See all',style: TextStyle(fontSize: 20),),
                 Icon(Icons.arrow_forward_ios)
               ],
             )
            ],),
          ),
          Container(margin: EdgeInsets.only(left: 20,top: 30),
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BottomContainers(image: 'images/splash1.png',
                  tittle: 'How to Take Care of The Elderly',
                  subtittle:'By dr.zakria',),
                SizedBox(width: 20,),
                BottomContainers(
                  image: 'images/splash1.png',
                  tittle: 'How to Take Care of The Elderly',
                  subtittle: 'By dr.Ihsan',
                ),
                SizedBox(width: 20,),
                BottomContainers(
                  image: 'images/splash1.png',
                  tittle: 'How to Take Care of The Elderly',
                  subtittle: 'By dr.Ihsan',
                ),
                SizedBox(width: 20,),
                BottomContainers(
                  image: 'images/splash1.png',
                  tittle: 'How to Take Care of The Elderly',
                  subtittle: 'By dr.Ihsan',
                ),
                SizedBox(width: 20,),
                BottomContainers(
                  image: 'images/splash1.png',
                  tittle: 'How to Take Care of The Elderly',
                  subtittle: 'By dr.Ihsan',
                ),
              ],
            ),
          ),
          SizedBox(height:40,),

          Container(margin: EdgeInsets.only(right: 20,left: 20),
              height: 80,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.cyan,
            boxShadow: [
              BoxShadow(color: Colors.grey,
                blurRadius: 10
              )
            ]
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: 0,),
            IconButton(icon: Icon(Icons.home,size: 35,color:  isSelected==iconbotton.home
                ?Colors.lime:Colors.white,),onPressed: (){
              setState(() {
                isSelected=iconbotton.home;
              });
            },),
              IconButton(icon: Icon(Icons.textsms,size: 35,color: isSelected==iconbotton.text
                  ?Colors.lime:Colors.white,), onPressed: (){
                setState(() {
                  isSelected=iconbotton.text;
                });
              }),
              IconButton(icon: Icon(Icons.location_on,size: 35,color: isSelected==iconbotton.location
              ?Colors.lime:Colors.white), onPressed: (){
                setState(() {
                  isSelected=iconbotton.location;
                });
              }),
              IconButton(icon: Icon(Icons.settings,size: 35,color: isSelected==iconbotton.setting
              ?Colors.lime:Colors.white), onPressed: (){
                setState(() {
                  isSelected=iconbotton.setting;
                });
              }),
          ],),),
        ],
      ),
    );
  }
}
