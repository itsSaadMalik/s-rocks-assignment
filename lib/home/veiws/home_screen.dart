import 'package:flutter/material.dart';
import 'package:s_rocks_assignment_project/core/themes/app_colors.dart';
import 'package:s_rocks_assignment_project/home/veiws/widgets/app_bar.dart';
import 'package:s_rocks_assignment_project/home/veiws/widgets/bottom_nav_bar.dart';
import 'package:s_rocks_assignment_project/home/veiws/widgets/home_main_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appDarkbackgorund,
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          HomeAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              HomeScreenMainBody(),

              HomeBottomNavBar(),
            ]),
          ),
        ],
      ),
    );
  }
}
