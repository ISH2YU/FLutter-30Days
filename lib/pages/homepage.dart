import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static const String id = 'homepage';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Recommender"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 days of flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
