import 'package:bookly/constants.dart';
import 'package:bookly/features/search/presentation/view_model/hive.dart';
import 'package:flutter/material.dart';

import 'search_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
            child: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        )),
        const SearchField(),
        Expanded(
          child: ListView.builder(
              itemCount: CustomHive().getItems().length,
              itemBuilder: (context, index) {
                return IconButton(
                  onPressed: () {},
                  icon: Text(
                    CustomHive().getItems()[index],
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                );
              }),
        )
      ],
    );
  }
}
