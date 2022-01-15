import 'package:flutter/material.dart';
import 'package:flutter_project_ui/screens/home_screen.dart';
import 'package:flutter_project_ui/screens/last_screen.dart';
import 'package:flutter_project_ui/screens/num_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/homeScreen',
      routes: {
        '/homeScreen': (context) => HomeScreen(),
        '/NumScreen': (context) => NumScreen(),
        '/LastScreen': (context) => LastScreen(),
      },
    );
  }
}
