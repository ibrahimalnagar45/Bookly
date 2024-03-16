import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/view_widget/home_view_body.dart';
import 'package:bookly/features/home/presentation/views/view_widget/home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'Home View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          title: const HomeAppBar(),
        ),
        body: const HomeViewBody());
  }
}
