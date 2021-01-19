import 'package:flutter/material.dart';

class RequestRide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F0F0),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select a ride type",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Sorry,there are no ride type available right now for the selected trip",
                        style: TextStyle(
                            color: Color(0xFF2E2B2B),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trip details",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Center(
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          width: 5,
                                          color: Color(0xff8439f5),
                                          style: BorderStyle.solid)),
                                ),
                              ),
                              Container(
                                width: 5,
                                height: 50,
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xff8439f5),
                  const Color(0xFFdd00a5),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.7),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      
                              Center(
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          width: 5,
                                          color: Color(0xFFdd00a5),
                                          style: BorderStyle.solid)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current location",
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Unnamed Road,Addis Ababa,",
                                style: TextStyle(
                                    color: Color(0xFF414040),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Alexander PushkinSt,Addis Ababa",
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Addis Ababa,ET",
                                style: TextStyle(
                                    color: Color(0xFF4D4C4C),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Pick up",
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "Drop-off",
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.add,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add note for a driver",
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Sorry,there are no ride type available right now for the selected trip",
                        style: TextStyle(
                            color: Color(0xFF2E2B2B),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Center(
                                child: Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          width: 1,
                                          color: Color(0xFF000000),
                                          style: BorderStyle.solid)),
                                          child: Center(child: Text("Cancel ride", style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 25,
                            fontWeight: FontWeight.w400),)),
                                ),
                              ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          height: 150,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Color(0xffd3b3ff))),
              onPressed: () {},
              child: const Text('Request a Lyft ride!',
                  style: TextStyle(fontSize: 20)),
              color: Color(0xffd3b3ff),
              textColor: Colors.white,
              elevation: 5,
            ),
          ),
        ),
        elevation: 0,
      ),
    );
  }
}
