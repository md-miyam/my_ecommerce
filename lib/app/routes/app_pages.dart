import 'package:get/get.dart';

import '../modules/Details/bindings/details_binding.dart';
import '../modules/Details/views/details_view.dart';
import '../modules/Reviews/bindings/reviews_binding.dart';
import '../modules/Reviews/views/reviews_view.dart';
import '../modules/custom_bottom_navigation_bar/bindings/custom_bottom_navigation_bar_binding.dart';
import '../modules/custom_bottom_navigation_bar/views/custom_bottom_navigation_bar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/saved_items_empty/bindings/saved_items_empty_binding.dart';
import '../modules/saved_items_empty/views/saved_items_empty_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DETAILS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_BOTTOM_NAVIGATION_BAR,
      page: () => const CustomBottomNavigationBarView(),
      binding: CustomBottomNavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SAVED_ITEMS_EMPTY,
      page: () => const SavedItemsEmptyView(),
      binding: SavedItemsEmptyBinding(),
    ),
    GetPage(
      name: _Paths.REVIEWS,
      page: () => const ReviewsView(),
      binding: ReviewsBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS,
      page: () => const DetailsView(),
      binding: DetailsBinding(),
    ),
  ];
}
