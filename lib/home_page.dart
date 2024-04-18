import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
