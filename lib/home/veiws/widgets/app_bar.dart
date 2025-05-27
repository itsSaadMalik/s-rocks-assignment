import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:s_rocks_assignment_project/core/themes/app_colors.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends ConsumerWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      // snap: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(30),
        ),
      ),
      pinned: true,
      floating: false,
      collapsedHeight: 60,
      expandedHeight: 310,

      surfaceTintColor: const Color.fromARGB(255, 175, 175, 175),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: const Color.fromARGB(255, 0, 0, 0),
                width: 1,
              ),
            ),
            gradient: AppColors.appBarGradient,
            // color: const Color.fromARGB(255, 37, 37, 37),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: SafeArea(
            child: Stack(
              // fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    color: const Color.fromARGB(
                      255,
                      255,
                      255,
                      255,
                    ).withValues(alpha: .09),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: -20,
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      'assets/disc.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 14,
                  right: -25,
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      'assets/keyboard.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    spacing: 3,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 30,
                        ),
                        height: 45,

                        child: Row(
                          spacing: 15,
                          children: [
                            Expanded(
                              child: SearchBar(
                                elevation: WidgetStatePropertyAll(0),
                                shape: WidgetStatePropertyAll(
                                  ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                backgroundColor: WidgetStatePropertyAll(
                                  AppColors.appDarkbackgorund,
                                ),
                                leading: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                hintText: 'search',

                                trailing: [
                                  VerticalDivider(
                                    endIndent: 10,
                                    indent: 10,
                                    color: const Color.fromARGB(
                                      255,
                                      82,
                                      82,
                                      82,
                                    ),
                                  ),
                                  Icon(Icons.mic),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.person_outline,
                                size: 25,
                                color: const Color.fromARGB(255, 94, 94, 94),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Claim your',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Free Demo',
                        style: GoogleFonts.lobster(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'for custom Music Production',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Book Now',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Syne
// Lobster

// Syne