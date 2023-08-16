import 'package:flutter/material.dart';
import 'costumcontainer.dart';



enum iconbotton{
  home,
  text,
  location,
  setting,
  none,
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  iconbotton isSelected=iconbotton.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Chat',style: TextStyle(color: Colors.black),),
            IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: null)
          ],
        ),
        centerTitle: false,
      ),
      body: Column(
        children: <Widget>[
          Container(margin: EdgeInsets.only(left: 20,top: 20,),
            height: 700,
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Chatcontainer(
                      tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/splash1.png',
                    ),
                    SizedBox(height: 40,),
                    Chatcontainer(
                      tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/khan.png',
                    ),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'slam snga e bro',
                      image: 'images/splash1.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/khan.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/splash1.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/khan.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/splash1.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/khan.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/splash1.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e zo ka na',
                      image: 'images/khan.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e alka',
                      image: 'images/splash1.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/khan.png',),
                    SizedBox(height: 40,),

                    Chatcontainer(tittle: 'khan',
                      subtittle: 'chrta e',
                      image: 'images/splash1.png',),
                    SizedBox(height: 40,),
                  ],
                ),
              ],
            ),
          ),
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
                  SizedBox(width: 0,)
                ],)
          ),
        ],
      ),
    );
  }
}
