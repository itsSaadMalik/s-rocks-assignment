import 'package:flutter/material.dart';
import 'package:s_rocks_assignment_project/core/themes/app_colors.dart';

class DummyServiceScreen extends StatelessWidget {
  const DummyServiceScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.appBarGradient),
      child: Center(
        child: Text(
          'You Tapped on : $title',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
        ),
      ),
    );
  }
}
