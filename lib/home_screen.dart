import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdg/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 18),
                  Text(
                    "Welcome to your,\n GDG AAST Chapter",
                    style: TextStyle(
                      color: AppColors.offWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Activities");
                    },
                    child: Icon(
                      Platform.isAndroid
                          ? Icons.local_activity_outlined
                          : CupertinoIcons.game_controller,
                      size: 21,
                    ),
                  ),
                  SizedBox(width: 14),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Events");
                    },
                    child: Icon(
                      Platform.isAndroid
                          ? Icons.calendar_month_outlined
                          : CupertinoIcons.calendar,
                      size: 21,
                    ),
                  ),
                  SizedBox(width: 13),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      "assets/stackedlogos/GDG Professional - Stacked - Red.png",
                    ),
                  ),
                  SizedBox(width: 18),
                ],
              ),
            ],
          ),
        ),
        /*  bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.shifting,
          elevation: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Platform.isAndroid
                    ? Icons.calendar_month_outlined
                    : CupertinoIcons.calendar,
              ),
              label: "Events",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Platform.isAndroid ? Icons.home_outlined : CupertinoIcons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Platform.isAndroid
                    ? Icons.local_activity_outlined
                    : CupertinoIcons.game_controller,
              ),
              label: "Activities",
            ),
          ],
        ),*/
      ),
    );
  }
}
