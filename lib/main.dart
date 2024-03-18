import 'package:bookly/bloc_observer.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/core/utils/services/check_image_validation.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementaion.dart';
import 'package:bookly/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/relevance_cubit/relevance_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newesr_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home/presentation/views/details_view.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/splash/presentation/views/splah_view.dart';

void main(List<String> args) {
  setupSrviceLocator();
  Bloc.observer = SimpleBlocObserver();

  validImageOrNor(
      'https://www.bing.com/images/search?view=detailV2&ccid=ikjfMIwl&id=F7DC0F0057AEA38888775EF871E934A2FB236E17&thid=OIP.ikjfMIwldLjslcb24JQ9DgAAAA&mediaurl=https%3a%2f%2fe7.pngegg.com%2fpngimages%2f258%2f625%2fpng-clipart-exclamation-mark-exclamation-mark.png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.8a48df308c2574b8ec95c6f6e0943d0e%3frik%3dF24j%252b6I06XH4Xg%26pid%3dImgRaw%26r%3d0&exph=503&expw=474&q=%d8%b9%d9%84%d8%a7%d9%85%d9%87+%d8%aa%d8%b9%d8%ac%d8%a8&simid=608042077020959037&FORM=IRPRST&ck=C23063D9D6D10B3B99A19A5B7A331C01&selectedIndex=0&itb=0');

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
          )..fetchAllBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getit.get<HomeRepeImpl>(),
          )..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => RelevanceCubitCubit(
            getit.get<HomeRepeImpl>(),
          ),
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
