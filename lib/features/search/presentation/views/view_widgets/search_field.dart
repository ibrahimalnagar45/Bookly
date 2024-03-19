import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newesr_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/view_model/hive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(.15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: TextField(
            onSubmitted: (data) {
              CustomHive().addItem(data);

              BlocProvider.of<NewestBooksCubit>(context)
                  .fetchNewestBooks(q: data);
              BlocProvider.of<AllBooksCubit>(context).fetchAllBooks(q: data);
              Navigator.pushNamed(context, HomeView.id);
            },
            autofocus: true,
            // focusNode: FocusNode(),
            enabled: true,
            decoration: const InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
