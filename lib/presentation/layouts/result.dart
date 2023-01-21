import 'package:flutter/material.dart';
import 'package:princeton_hive/presentation/elements/bottom_navbar.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyNavBar(),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.59,
              ),
              Text(
                "Welcome, \n Priya",
                style: TextStyle(
                    color: Color(0xff4A164B), fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                 onTap: (){
                      Navigator.of(context).pushNamed(
                        '/user_profile',
                      );
                    },
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.13,
                    child: Image.asset("assets/image/profile_img.png")),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.024,
                    horizontal: MediaQuery.of(context).size.width * 0.07),
                child: Text(
                  "Result",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.height * 0.029,
                      color: Color(0xff4A164B)),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(
                  '/camera_screen',
                );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.024,
                      horizontal: MediaQuery.of(context).size.width * 0.07),
                  child: Text(
                    "Upload",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        color: Color(0xffF0BC15)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 21),
            child: Container(
              height: 106,
              width: 358,
              decoration: const BoxDecoration(
                color: Color(0xFFffffff),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0,
                    spreadRadius: 5.0,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 14),
                    child: SizedBox(
                      child: Image.asset("assets/image/result.png"),
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 1),
                            child: Text(
                              "Score",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xFF000000)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Text(
                              "64",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF4A164B)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Text(
                          "Assessment Date",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFF000000)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 1),
                        child: Text(
                          "31 Mar,2022 3:03 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xFF000000)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 4),
                        child: Container(
                            height: 30,
                            width: 121,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0BC15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 38, vertical: 6),
                              child: Text(
                                "Report",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xFFFFFFFF)),
                              ),
                            )),
                      ),
                      SizedBox(
                          height: 30,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 0,
                                  side: BorderSide(color: Color(0xffF0BC15)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20))),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  '/batch',
                                );
                              },
                              child: Text(
                                "Get Feedback",
                                style: TextStyle(color: Color(0xffF0BC15)),
                              )))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
