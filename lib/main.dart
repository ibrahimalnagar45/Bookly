import 'package:bookly/views/review_view.dart';
import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main(List<String> args) {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const ReviewView(),
    );
  }
}
