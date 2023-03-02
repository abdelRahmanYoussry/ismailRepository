import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key, required this.userName}) : super(key: key);
  String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wecolme'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [Text(userName)],
      ),
    );
  }
}
