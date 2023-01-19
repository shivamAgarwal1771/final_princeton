import "package:flutter/material.dart";

class ProfileMain extends StatefulWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  List<String> items = ["Edit Profile","Settings","Help","Logout"];
  List<Iconss> ico= [Iconss(aim: Icon(Icons.person)),Iconss(aim: Icon(Icons.settings)),Iconss(aim: Icon(Icons.question_mark)),Iconss(aim: Icon(Icons.logout))];
  List<IconData> icons_data = [Icons.person,Icons.settings,Icons.question_mark,Icons.logout];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                      color: Color(0xff4A164B)),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 666,
                    color: Color.fromARGB(102,240,188,20),
                  ),
                ),
                Image.asset("assets/image/bee 2.png"),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 46),
                    child: CircleAvatar(
                     child: Image.asset("assets/image/profile_img.png"),
                      radius: 61,
                      backgroundColor: Color(0xffD790D9),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 182),
                    child: Text(
                      "Priya",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xff4A164B)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 49, horizontal: 235),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 37,
                      )),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Container(
                      height: 430,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 2),
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 270,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 13),
                            child: ListTile(
                                leading: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffD790D9),
                                        borderRadius: BorderRadius.all(Radius.circular(7))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Icon(icons_data[index]),
                                    )),
                                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                                title:  Text(
                                  items[index].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Color(0xff4A164B)),
                                ),),
                          );
                        }),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 550,left: 100),
                  child: Image.asset("assets/image/Princeton Logo.png"),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

class Iconss {
  Icon aim;
  Iconss({required this.aim});
}