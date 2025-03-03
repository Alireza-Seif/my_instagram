import 'package:get/get.dart';
import 'package:my_instagram/ui/pages/authentication/login/login_page.dart';
import 'package:my_instagram/ui/pages/authentication/register/register_page.dart';
import 'package:my_instagram/ui/pages/main/add_post/add_post_page.dart';
import 'package:my_instagram/ui/pages/main/explore/explore_page.dart';
import 'package:my_instagram/ui/pages/main/home/home_page.dart';
import 'package:my_instagram/ui/pages/main/profile/profile_page.dart';
import 'package:my_instagram/ui/pages/splash/splash_page.dart';

final routes = [
  GetPage(name: '/splash', page: () => const SplashPage()),
  GetPage(name: '/home', page: () => const HomePage()),
  GetPage(name: '/login', page: () => const LoginPage()),
  GetPage(name: '/register', page: () => const RegisterPage()),
  GetPage(name: '/profile', page: () => const ProfilePage()),
  GetPage(name: '/explore', page: () => const ExplorePage()),
  GetPage(name: '/add_post', page: () => const AddPostPage()),
];
