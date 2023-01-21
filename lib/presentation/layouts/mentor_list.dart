import 'package:flutter/material.dart';

class Mentor extends StatefulWidget {
  const Mentor({Key? key}) : super(key: key);

  @override
  State<Mentor> createState() => _MentorState();
}

class _MentorState extends State<Mentor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
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
            onTap: () {
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
      //TextField(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
        child: Container(
          height: 52,
          width: 354,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.grey.shade200,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Search",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff6C6C6C)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search, color: Color(0xff6C6C6C)),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
        child: Text(
          "Mentor List",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(0xff4A164B)),
        ),
      ),
      ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Column(
                              children: [
                                Image.asset("assets/image/mentor_img.png"),
                                Text("Marcos Navas"),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 1500s, when an unknown printer took a  printer took a",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC107)),
                                        onPressed: () {}, child: Text("Delhi",style: TextStyle(color: Colors.black),)),
                                        SizedBox(width: 20,),
                                        ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC107)),
                                        onPressed: () {}, child: Text("English",style: TextStyle(color: Colors.black),)),
                                        SizedBox(width: 16,),
                                        ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC107)),
                                        onPressed: () {}, child: Text("5+ years",style: TextStyle(color: Colors.black),)),
                                        
                                  ],
                                )
                              ],
                            ),
                          ));
                },
                child: Container(
                  height: 96,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 7),
                        child: Container(
                          child: Image.asset("assets/image/bee.png"),
                          height: 52,
                          width: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0BC15),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mentor Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. ",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }))
    ]));
  }
}
