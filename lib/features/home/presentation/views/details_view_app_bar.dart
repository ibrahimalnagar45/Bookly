import 'package:bookly/features/home/presentation/views/details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class DetailsViewAppBar extends StatelessWidget {
  const DetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            );
          },
          child: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                SearchView.id,
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ))
      ],
    );
  }
}
