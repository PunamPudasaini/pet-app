import 'package:flutter/material.dart';
import 'package:pet_app/Screen2.dart';
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
      transform: Matrix4.translationValues(xofset, yofset, 0)
        ..scale(scalefactor),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isdrawer ? 40 : 0.0),
        color: Colors.white,
      ),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isdrawer
                      ? IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            setState(() {
                              xofset = 0;
                              yofset = 0;
                              scalefactor = 1;
                              isdrawer = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xofset = 230;
                              yofset = 150;
                              scalefactor = 0.6;
                              isdrawer = true;
                            });
                          },
                        ),
                  Column(
                    children: <Widget>[
                      Text('Location'),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                            Icons.location_on,
                            color: primarycolor,
                          )),
                          Text('Bhadrawas,Kathamandu'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                   backgroundImage: AssetImage('assets/punam.jpg'),

                  ),
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
                  prefixIcon: Icon(
                    Icons.search,
                    color: primarycolor,
                  ),
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
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: list,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Text(categories[index]['name']),
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: list),
                            margin: EdgeInsets.only(top: 40),
                          ),
                          Align(
                            child: Image.asset('assets/pet-cat1.png'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: list,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Sola', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  IconButton(
                                      icon:
                                          Icon(Icons.mail, color: primarycolor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Abisian Cat' , style: TextStyle(fontSize: 17),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('2 years old', style: TextStyle(fontSize: 14),),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.location_on,
                                      color: primarycolor),
                                ),
                                Text('Distance 2.6 km'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: list),
                          margin: EdgeInsets.only(top: 40),
                        ),
                        Align(
                          child: Image.asset('assets/pet-cat2.png'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: list,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Orion', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                IconButton(
                                    icon:
                                    Icon(Icons.mail, color: primarycolor)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Abysianan Cat' , style: TextStyle(fontSize: 17),),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('5 years old', style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.location_on,
                                    color: primarycolor),
                              ),
                              Text('Distance 2.6 km'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
