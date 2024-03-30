import 'package:bookly/bloc_observer.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementaion.dart';
import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/search/data/repos/search_rep_impelmentation.dart';
import 'package:bookly/features/home/presentation/manager/relevance_cubit/relevance_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newesr_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/search/presentation/view_model/manager/interested_cubit/interested_cubit.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'features/home/presentation/views/details_view.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/splash/presentation/views/splah_view.dart';

void main(List<String> args) async {
  setupSrviceLocator();
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox<>(SearchedKey);

  // await Hive.deleteBoxFromDisk(SearchedKey);
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllBooksCubit(
            getit.get<HomeRepeImpl>(),
          )..fetchAllBooks(context: context),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getit.get<HomeRepeImpl>(),
          )..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => RelevanceCubitCubit(
            getit.get<SearchRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => InterestedCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        routes: {
          HomeView.id: (context) => const HomeView(),
          DetialsView.id: (context) => const DetialsView(),
          SplahView.id: (context) => const SplahView(),
          SearchView.id: (context) => const SearchView(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: SplahView.id,
      ),
    );
  }
}
