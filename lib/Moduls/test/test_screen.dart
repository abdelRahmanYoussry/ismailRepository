import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);
//const vs final

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestScreen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
                child: const Text(
                  'Test1',
                  style: TextStyle(height: 2),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Text(
                  'Test2',
                  style: TextStyle(height: 2),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                child: const Text(
                  'Test3',
                  style: TextStyle(height: 2),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.teal,
                child: const Text(
                  'Test4',
                  style: TextStyle(height: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
