import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'features/details/presentation/views/details_view.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/splash/presentation/views/splah_view.dart';

void main(List<String> args) {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      routes: {
        HomeView.id: (context) => const HomeView(),
        DetialsView.id: (context) => const DetialsView(
              book: '',
            ),
        SplahView.id: (context) => const SplahView(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: SplahView.id,
    );
  }
}
