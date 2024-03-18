import 'package:bookly/features/home/presentation/views/view_widget/home_view_body.dart';
import 'package:flutter/material.dart';
import 'view_widgets/search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
static String id= 'searchView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const Expanded(
            child: HomeViewBody(),
          ),
        ],
      ),
    );
  }
}
