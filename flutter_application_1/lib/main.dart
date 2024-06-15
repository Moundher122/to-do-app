// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pages/homepage.dart';
void main() {
  runApp(myapp());
  
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:homepage(),
      
    );
  }
}