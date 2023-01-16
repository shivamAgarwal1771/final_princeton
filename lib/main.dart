import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:princeton_hive/presentation/layouts/journey_page.dart';
import 'package:princeton_hive/utils/route_generator.dart';

late List<CameraDescription> _cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: const JourneyPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

// Recording screen code written here due to global variable issues
class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  late CameraController controller;
  bool switchb = false;
  @override
  void initState() {
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.613,
                  ),
                  Text(
                    "Welcome, \n Priya",
                    style: TextStyle(
                        color: Color(0xff4A164B), fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.13,
                      child: Image.asset("assets/image/profile_img.png"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top :40,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(
                      '/result',
                    );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.024,
                          horizontal: MediaQuery.of(context).size.width * 0.07),
                      child: Text(
                        "Result",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.height * 0.025,
                            color: Color(0xffF0BC15)),
                      ),
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
                            fontSize: MediaQuery.of(context).size.height * 0.029,
                            color: Color(0xff4A164B)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
              Padding(
          padding: const EdgeInsets.only(top:100,left: 25),
          child: SizedBox(height: 600,child: CameraPreview(controller)),
              ),
              Padding(
          padding: const EdgeInsets.only(top: 593, left: 163),
          child: CircleAvatar(
            backgroundColor: switchb == false ? Colors.transparent : Colors.white,
            radius: 35,
          ),
              ),
              Padding(
          padding: const EdgeInsets.only(top: 600, left: 170),
          child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (switchb == false)
                    switchb = true;
                  else
                    switchb = false;
                });
              },
              backgroundColor: switchb == false ? Colors.red : Colors.redAccent),
              ),
              Padding(
          padding: const EdgeInsets.only(top: 710, left: 100),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFFC107), minimumSize: Size(200, 50)),
              onPressed: () {
                 Navigator.of(context).pushNamed(
                    '/result',
                  );
              },
              child: Text("Submit")),
              )
            ]),
        ));
  }
}
