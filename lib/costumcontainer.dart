import 'package:flutter/material.dart';

class ServiceContainers extends StatefulWidget {
  final IconData? icon;
  final String? tittle;
  ServiceContainers({this.icon, this.tittle});

  @override
  _ServiceContainersState createState() => _ServiceContainersState();
}

class _ServiceContainersState extends State<ServiceContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.cyan[300]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            widget.icon,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.tittle!,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

//containers Below the articles

class BottomContainers extends StatefulWidget {
  final String? tittle;
  final String? subtittle;
  final String? image;

  BottomContainers({this.tittle, this.subtittle, this.image});

  @override
  _BottomContainersState createState() => _BottomContainersState();
}

class _BottomContainersState extends State<BottomContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.cyan[300],
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 130,
            width: 160,
            clipBehavior: Clip.antiAlias,
            child: Image(
              image: AssetImage(widget.image!),
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Container(
              width: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.tittle!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        widget.subtittle!,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.lime,
                        child: Center(child: Icon(Icons.arrow_forward_ios)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Chatcontainer extends StatefulWidget {
  final String? tittle;
  final String? image;
  final String? subtittle;

  Chatcontainer({this.tittle, this.subtittle, this.image});

  @override
  _ChatcontainerState createState() => _ChatcontainerState();
}

class _ChatcontainerState extends State<Chatcontainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          child: Image(
            image: AssetImage(widget.image!),
            fit: BoxFit.fitWidth,
          ),
          radius: 30,
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.tittle!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(widget.subtittle!)
          ],
        )
      ],
    );
  }
}
