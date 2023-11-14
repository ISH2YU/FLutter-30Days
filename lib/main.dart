import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: LoginPage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
      },
    );
  }
}
