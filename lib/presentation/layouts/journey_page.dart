import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:princeton_hive/presentation/elements/custom_scaffold.dart';

class JourneyPage extends StatelessWidget {
  const JourneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.13,
                    child: GestureDetector(
                      onTap: (){
                         Navigator.of(context).pushNamed(
                  '/how_it_works',
                );
                      },
                      child: Image.asset("assets/image/bee.png")))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.036,
            ),
            Text(
              "Princeton Grade Journey",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset("assets/image/journey.png"),
            Image.asset("assets/image/journey_steps.png"),
            //Image.asset("assets/image/journey_video.png"),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFC107)),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/create_activity',
                  );
                },
                child: Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
