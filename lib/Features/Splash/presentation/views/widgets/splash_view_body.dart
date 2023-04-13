import 'package:bookly/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/core/utils/app_router.dart';

import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SplahViewBody extends StatefulWidget {
  const SplahViewBody({super.key});

  @override
  State<SplahViewBody> createState() => _SplahViewBodyState();
}

class _SplahViewBodyState extends State<SplahViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    initSlidingAnimation();
    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.off(const HomeView(),
      //     transition: Transition.fadeIn, duration: kTransitionDuration);

      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
