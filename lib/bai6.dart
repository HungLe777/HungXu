// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Home Screen",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 20),
              ColorfulBoxes(),
              const SizedBox(height: 20),
              Image.network(
                'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210317130050/Dart-Tutorial.png',
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://yqintl.alicdn.com/ecf3db2b7c2877249d40d37154e38fef6eddbcb8.png',
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.pngmart.com/files/13/Android-Logo-Transparent-PNG.png',
                width: 100,
                height: 100,
              ),
              
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click Here!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorfulBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorBox(color: Colors.blue),
        ColorBox(color: Colors.green),
        ColorBox(color: Colors.red),
      ],
    );
  }
}

class ColorBox extends StatelessWidget {
  final Color color;

  ColorBox({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}