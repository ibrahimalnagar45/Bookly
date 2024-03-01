import 'package:bookly/assets.dart';
import 'package:bookly/features/home/presentation/views/view_widget/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../details/presentation/views/details_view.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetialsView.id);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            child: AspectRatio(
              aspectRatio: 1 / 1.5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsADate.testImage),
                  ),
                ),
              ),
            ),
          ),
          const Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harry potter",
                style: TextStyle(
                  fontFamily: ' GT Sectra Fine',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "and the global of fire",
                style: TextStyle(
                  fontFamily: ' GT Sectra Fine',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "J.K. Rowling",
                style: TextStyle(
                  fontFamily: ' GT Sectra Fine',
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '19.99\$',
                    style: TextStyle(
                      fontFamily: ' GT Sectra Fine',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontFamily: ' GT Sectra Fine',
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    '(23449)',
                    style: TextStyle(
                      fontFamily: ' GT Sectra Fine',
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
