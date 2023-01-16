import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JoinNow extends StatelessWidget {
  const JoinNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xff4A164B),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 8),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "Price",
                  style: TextStyle(color: Color(0xffFFC107)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "₹1150",
                  style: TextStyle(fontSize: 20, color: Color(0xffFFC107)),
                )
              ],
            ),
            SizedBox(
              width: 100,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFC107)),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                          '/payment',
                        );
                  },
                  child: Text(
                    "Join The Batch",
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
