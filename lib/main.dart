import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  List<dynamic> data = [
    {"name": "java", "type": "posdpiohapiasih", "color": Colors.cyanAccent},
    {
      "name": "java \n script",
      "type": "asjkgkafkajgkj",
      "color": Colors.blueAccent
    },
    {"name": "python", "typr": "askjgfksjgdfkg", "color": Colors.blueGrey},
  ];

  List<Color> colors = [
    Colors.cyanAccent[100],
    Colors.deepOrange[100],
    Colors.blueAccent[100]
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height / 1,
          width: MediaQuery.of(context).size.width / 1,
          color: Colors.grey[300],
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: Colors.grey[300],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Hi , Nur",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black)),
                              Text("welcome to my App FLutter!",
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          margin: EdgeInsets.only(right: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 1,
                                      blurRadius: 11,
                                      offset: Offset(-6, -6)),
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.50),
                                      spreadRadius: 1,
                                      blurRadius: 15,
                                      offset: Offset(3, 3))
                                ],
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30)),
                            width: 45,
                            height: 45,
                            child: Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  // search body--------------------------------------------
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.grey[300],
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1,
                                    blurRadius: 15,
                                    offset: Offset(-6, -6)),
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.30),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(6, 6))
                              ],
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20),
                              ),
                            ),
                            margin: EdgeInsets.only(right: 5),
                            width: MediaQuery.of(context).size.width / 1.50,
                            height: 35,
                            child: TextField(
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                hintText: "Search",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(25)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4, -4),
                                    blurRadius: 15,
                                    spreadRadius: 1),
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.40),
                                    offset: Offset(8, 8),
                                    blurRadius: 15,
                                    spreadRadius: 1)
                              ],
                            ),
                            child: RaisedButton(
                              color: Colors.grey[300],
                              child: Icon(Icons.search),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    color: Colors.grey[300],
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, i) {
                        return new Container(
                          decoration: new BoxDecoration(
                            color: Colors.grey[300],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset: Offset(-6, -6),
                              ),
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.40),
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: Offset(6, 6))
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          width: 200,
                          height: 100,
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Text("${data[i]['name']}")
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    color: Colors.grey[300],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: Text(
                            "Category",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                decoration:BoxDecoration(
                                color:Colors.grey[300],
                              boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset: Offset(-6, -6),
                              ),
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.40),
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: Offset(6, 6))
                            ],
                                borderRadius: BorderRadius.circular(20)
                                ),
                                width: 70,
                                height:70,
                                child: Center(
                                  child: Text("UI/UX"),
                                ),
                                
                              ),
                               Container(
                                decoration:BoxDecoration(
                                color:Colors.grey[300],
                              boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset: Offset(-6, -6),
                              ),
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.40),
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: Offset(6, 6))
                            ],
                                borderRadius: BorderRadius.circular(20)
                                ),
                                width: 70,
                                height:70,
                                child: Center(
                                  child: Text("Programing",style:TextStyle(fontSize: 11)),
                                ),
                              ),
                               Container(
                                decoration:BoxDecoration(
                                color:Colors.grey[300],
                              boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 15,
                                offset: Offset(-6, -6),
                              ),
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.40),
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: Offset(6, 6))
                            ],
                                borderRadius: BorderRadius.circular(20)
                                ),
                                width: 70,
                                height:70,
                                child: Center(
                                  child: Text("AI"),
                                ),
                               )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    color: Colors.grey[300],
                    child: Text(""),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

mixin widget {}
