import 'package:flutter/material.dart';
import 'package:flutter_application_3/gradient_container.dart';
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 228, 211),
      body: GradientContainer([Colors.amber, Color.fromARGB(255, 0, 0, 0)])
    ),
  ));
}
