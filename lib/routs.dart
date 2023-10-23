import 'package:starting_point/core/middleware/my_middleware.dart';
import 'package:starting_point/view/screens/onboarding_screen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () => const OnBoardingScreen(),
      middlewares: [MyMiddleWare()]),
];
