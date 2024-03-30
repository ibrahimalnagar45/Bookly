import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newesr_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/view_model/manager/interested_cubit/interested_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Searched_item.dart';
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
        const InterestedListView(),
      ],
    );
  }
}

class InterestedListView extends StatelessWidget {
  const InterestedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InterestedCubit, InterestedState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
              itemCount: (BlocProvider.of<InterestedCubit>(context)
                          .searched
                          .length) >
                      7
                  ? 7
                  : (BlocProvider.of<InterestedCubit>(context).searched.length),
              itemBuilder: (context, index) {
                return SearchedItem(index: index);
              }),
        );
      },
    );
  }
}
