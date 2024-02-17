import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/Logo.png',
          height: 18,
        ),
        const Icon(
          Icons.search,
          size: 30,
        ),
      ],
    );
  }
}
