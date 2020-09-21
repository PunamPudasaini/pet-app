import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/configuration.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[

                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back_ios), color: Colors.white ,onPressed: (){
                    Navigator.pop(context);
                  },),

                  IconButton(icon: Icon(Icons.share), color: Colors.white,  onPressed: (){
                    /*Navigator.pop(context);*/
                  },),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 60),
            child: Align(
              alignment: Alignment.topCenter,

              child: Hero(tag: 1, child: Image.asset('assets/pet-cat1.png')),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow:  list,
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 130,
              width: 450,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.favorite_border,color: Colors.white,),
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(20),

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  Expanded(
                    child: Container(
                      width: 50,
                      height: 50,
                      child:
                      Center(child: Text('Adoption', style: TextStyle(color: Colors.white) )),
                      decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(20),

                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
