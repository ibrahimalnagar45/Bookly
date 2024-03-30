import 'package:bookly/features/home/presentation/views/view_widget/home_view_body.dart';
import 'package:bookly/features/search/presentation/view_model/manager/interested_cubit/interested_cubit.dart';
import 'package:bookly/features/search/presentation/views/view_widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'view_widgets/search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = 'searchView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchViewBody(),
    );
  }
}
