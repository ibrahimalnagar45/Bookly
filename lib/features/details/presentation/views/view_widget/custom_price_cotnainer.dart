import 'package:flutter/material.dart';

class CustomPriceContainer extends StatelessWidget {
  const CustomPriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: const Center(
            child: Text(
              '19.99\$',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: ' GT Sectra Fine'),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: const Center(
            child: Text(
              'Free Preview ',
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
