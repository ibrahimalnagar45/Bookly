import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'The Jungle Book',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Rudyard kipling ',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: EdgeInsets.only(right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    fontSize: 17),
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
          ),
        ),
      ],
    );
  }
}
