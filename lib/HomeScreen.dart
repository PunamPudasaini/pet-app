import 'package:flutter/material.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xofset = 0;
  double yofset = 0;
  double scalefactor = 1;
  bool isdrawer = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xofset, yofset, 0)..scale(scalefactor),

      duration: Duration(milliseconds: 250),
      color: Colors.white,

      child: Column(
        children: <Widget>[

          SizedBox(
          height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                isdrawer?IconButton(icon:  Icon(Icons.arrow_back), onPressed: (){
                  setState(() {
                     xofset = 0;
                     yofset = 0;
                     scalefactor = 1;
                     isdrawer = false;
                  });
                }):
               IconButton(icon: Icon(Icons.menu), onPressed: (){
                 setState(() {
                   xofset=230;
                   yofset=150;
                   scalefactor=0.6;
                   isdrawer=true;
                 });

               },),

                Column(
                  children: <Widget>[
                    Text('Location'),
                    Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.location_on, color: primarycolor,)),
                        Text('Bhadrawas,Kathamandu'),
                      ],
                    ),
                  ],
                ),
              CircleAvatar(),
              ],


            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primarycolor),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),

                prefixIcon: Icon(Icons.search,color: primarycolor,),
                hintText: "Search Pet",
                filled: true,
                fillColor: Colors.grey[200],


              ),
            ),
          ),

          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context,index){
                return Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20,top: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: list,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Image.asset(categories[index]['iconPath'],height: 50, width: 50,),
                      ),
                      Text(categories[index]['name']),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            child: Row(
              children: <Widget>[

              ],
            ),
          ),


        ],

      ),
    );
  }
}
