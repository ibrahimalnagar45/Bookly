 
import 'package:flutter/material.dart';

import '../../../../details/presentation/views/details_view.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.withPlayIcon});
  final bool withPlayIcon;

  @override
  Widget build(BuildContext context) {
    return withPlayIcon
        ? GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, DetialsView.id);
            },
            child: Stack(
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
                  right: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.transparent.withOpacity(.2),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 20,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetialsView.id,
              );
            },
            child: Image.asset('assets/images/test_image.png'));
  }
}
