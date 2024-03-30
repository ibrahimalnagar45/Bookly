import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/manager/all_books_cubit/all_books_cubit.dart';
 import '../../../../home/presentation/views/home_view.dart';
import '../../view_model/manager/interested_cubit/interested_cubit.dart';

class SearchedItem extends StatelessWidget {
  const SearchedItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<AllBooksCubit>(context).fetchAllBooks(context: context);
        // BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks(
        //     q: BlocProvider.of<InterestedCubit>(context).searched[index]);
        BlocProvider.of<InterestedCubit>(context).modifyList(index);

        Navigator.pushNamed(
          context,
          HomeView.id,
        );
      },
      icon: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          BlocProvider.of<InterestedCubit>(context).searched[index],
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
