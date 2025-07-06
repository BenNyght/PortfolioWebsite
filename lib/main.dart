import 'package:flutter/material.dart';
import 'package:benjamin_portfolio/home.dart';
import 'package:benjamin_portfolio/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Benjamin Finlay',
      initialRoute: '/',
      routes: {
        '/':       (_) => HomeView(),
        '/projects': (_) => const Projects(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xFF232323),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF232323),
          elevation: 0,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
