import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'widgets/sliding_text.dart';

class SplahView extends StatefulWidget {
  const SplahView({super.key});
  static String id = 'Splash view';

  @override
  State<SplahView> createState() => _SplahViewState();
}

class _SplahViewState extends State<SplahView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initAnimation();
    goToHome();
  }

  @override
  void dispose() {
    
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsADate.logo),
          const SizedBox(
            height: 10,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween(begin: const Offset(0, 8), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void goToHome() => Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.pushNamed(context, HomeView.id),
      );
}
