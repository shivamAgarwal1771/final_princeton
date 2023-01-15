import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class BatchDetails extends StatefulWidget {
  const BatchDetails({Key? key}) : super(key: key);

  @override
  State<BatchDetails> createState() => _BatchDetailsState();
}

class _BatchDetailsState extends State<BatchDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            
            children: [
              Padding(
                padding: const EdgeInsets.all(17),
                child: SizedBox(
                    height: 204,
                    width: 314,
                    child: Image.asset(
                      "assets/image/batch.png",
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30,top: 150),
                child: Container(
                    height: 41,
                    width: 172,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff4A164B)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                          size: 42,
                        ),
                        Text(
                          "Watch Preview",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Rule the world with personality development course",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: Color(0xFF4A164B),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "Start in 5 days",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xff4A164B)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xFF4A164B),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "Pratima Jaidev",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color(0xff4A164B)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26),
            child: Container(
                color: Colors.red.shade100,
                height: 49,
                width: 377,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: Row(
                    children: [
                      Icon(
                        Icons.watch_later,
                        color: Color(0xffDD3D3D),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Text(
                          "Enrollment ends on 25th Apr",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xffDD3D3D)),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Container(
            color: Color(0xFF4A164B),
            height: 60,
            width: 377,
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xFF4A164B),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                          child: Text("Schedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xffFFC107)))),
                      Tab(
                          child: Text("About",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xffFFC107)))),
                      Tab(
                          child: Text("FAQs",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xffFFC107)))),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Trial Classes",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: SizedBox(
                height: 230,
                width: 160,
                child: Image.asset(
                  "assets/image/batch.png",
                  
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "How to develop your personality",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Pratima Jaidev",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Schedule",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff4A164B)),
                ),
                Text(
                  "VIEW FULL >",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Color(0xff4A164B)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.sunny,
                  color: Color(0xFF4A164B),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "Morning Classes",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff4A164B)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                Icon(
                  Icons.play_circle,
                  color: Color(0xFF4A164B),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "10+ Live Classes",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff4A164B)),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 121,
                  width: 369,
                  decoration: BoxDecoration(
                      color: Color(0xfffff4dc),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              "25 Apr 20222",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff4A164B)),
                            ),
                          ),
                          SizedBox(
                            width: 175,
                          ),
                          Text(
                            "Monday",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color(0xff4A164B)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              height: 38,
                              width: 41,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Center(
                                  child: Text(
                                    "11:00 AM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xff4A164B)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "PERSONALITY DEVELOPMENT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: Color(0xff4A164B)),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  "Introductions to personality",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      color: Color(0xff4A164B)),
                                ),
                              ),
                              Text(
                                "Pratima Jaidev",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff4A164B)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}