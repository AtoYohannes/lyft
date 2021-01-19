import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:lyft/constat.dart';
import 'package:lyft/requestRide.dart';
import 'package:lyft/work.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/map.png",
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                       Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => Work()),
        (Route<dynamic> route) => true);
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/avatar.png",
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    child: LiteRollingSwitch(
                      //initial value
                      value: false,
                      textOn: '',
                      textOff: '',
                      colorOn: Colors.greenAccent[700],
                      colorOff: Color(0xffcac9d9),
                      iconOn: Icons.online_prediction,
                      iconOff: Icons.drive_eta_rounded,
                      textSize: 16.0,
                      onChanged: (bool state) {},
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                       Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => RequestRide()),
        (Route<dynamic> route) => true);
                    },
                    child: Icon(FontAwesomeIcons.slidersH))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 80),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Center(
                      child: Text(
                    "GO ONLINE",
                    style: TextStyle(
                        color: Color(0xff372684),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                  decoration: kInnerDecoration,
                ),
              ),
              height: 70.0,
              width: 300,
              decoration: kGradientBoxDecoration,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.25,
            maxChildSize: 0.6,
            minChildSize: 0.1,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.blueAccent,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${5} Streak",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("4 ride in a row"),
                                ],
                              ),
                            ],
                          ),
                          Text("Until 3 PM")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.greenAccent,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Weekly Goal",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("30% Completed"),
                                ],
                              ),
                            ],
                          ),
                          Text("Ends 5/6")
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff7107c1),
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_eta_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'School',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
