import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 10),
      color: primarycolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/punam.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
                 Text('Punam Pudasaini' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                 Text('Active Status', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
             ],
                ),
              ),
            ],
          ),

          Column(
            children:
              drawerItem.map((e) => Row(
                children: <Widget>[
                  Icon(e['Icon'], color: Colors.white, size: 40,),
                  SizedBox(height: 20, width: 20, ),
                  Text(e['title'], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),

                ],
              )).toList(),

          ),




          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.settings, color: Colors.white,),),
              SizedBox(
                width: 10,
              ),
              Text('Setting',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(
                width: 10,
              ),
              Container(height: 20, width: 2, color: Colors.white,),
              SizedBox(
                width: 10,
              ),
              Text('Log Out',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

            ],
          ),
        ],
      ),
    );
  }
}
