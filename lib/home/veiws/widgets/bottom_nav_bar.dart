import 'package:flutter/material.dart';
import 'package:s_rocks_assignment_project/core/themes/app_colors.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      shape: Border(
        top: BorderSide(
          color: const Color.fromARGB(255, 112, 112, 112),
          width: .5,
        ),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: AppColors.appDarkbackgorund,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Image.asset(
              'assets/bottom_nav_bar/s.rocks.music_logo.png',
              alignment: Alignment.bottomCenter,
              fit: BoxFit.scaleDown,
              height: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_nav_bar/news.png',
              // color: Colors,
            ),
            label: 'v',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_nav_bar/trackbox.png',
              // color: Colors.grey,
            ),
            label: 'c',
          ),

          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom_nav_bar/workspace.png'),
            label: 'projects',
          ),
        ],
      ),
    );
  }
}
