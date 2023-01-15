

import 'package:flutter/material.dart';

import 'package:princeton_hive/presentation/layouts/signin_page.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
   int pageIndex = 0;
  
  // final pages = [
  //   const SignInPage(),
  //   const SignInPage(),
  //   const SignInPage(),
  //   const SignInPage(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xff4A164B),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
                Navigator.of(context).pushNamed(
                    '/dashboard',
                  );
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
                Navigator.of(context).pushNamed(
                    '/activity',
                  );
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.edit_note,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.edit_note,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
                Navigator.of(context).pushNamed(
                    '/event_glim',
                  );
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.event_available,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.event_available,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
                Navigator.of(context).pushNamed(
                    '/map_screen',
                  );
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}