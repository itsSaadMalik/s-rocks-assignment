import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:s_rocks_assignment_project/core/route%20config/routes.dart';
import 'package:s_rocks_assignment_project/core/themes/app_theme.dart';
import 'package:s_rocks_assignment_project/firebase_options.dart';
import 'package:s_rocks_assignment_project/home/veiws/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:s_rocks_assignment_project/service%20pages/vocals_service_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,
      // home: const HomeScreen(),
      routes: {
        '/': (context) => HomeScreen(),
        AppRouteNames.vocalsPage:
            (context) => DummyServiceScreen(
              title: ModalRoute.of(context)?.settings.arguments as String,
            ),
        AppRouteNames.lyricsWriting:
            (context) => DummyServiceScreen(
              title: ModalRoute.of(context)?.settings.arguments as String,
            ),
        AppRouteNames.mixingAndMastering:
            (context) => DummyServiceScreen(
              title: ModalRoute.of(context)?.settings.arguments as String,
            ),
        AppRouteNames.musicProduction:
            (context) => DummyServiceScreen(
              title: ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}
