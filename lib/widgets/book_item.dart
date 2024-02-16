import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Container(
        //   height: 200,
        //   width: 200,
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('assets/images/test_image.png'),
        //     ),
        //   ),
        // ),
        Image.asset('assets/images/test_image.png'),
        Positioned(
          bottom: 40,
          right: 70,
          child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.transparent.withOpacity(.2),
              child: const Icon(
                Icons.play_arrow,
                size: 20,
              )),
        ),
      ],
    );
  }
}
