import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Music Recommender"),
        ),
        body: Center(child: Container(child: Text("30 days of Flutter"))));
  }
}
