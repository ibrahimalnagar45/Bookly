import 'package:bookly/assets.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsADate.logo,
            height: 18,
            color: Colors.white,
          ),
          const Icon(
            Icons.search,
            size: 25,
          )
        ],
      ),
    );
  }
}
