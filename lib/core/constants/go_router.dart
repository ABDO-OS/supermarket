import 'package:go_router/go_router.dart';
import 'package:supermarket/feature/home/ui/home_screen.dart';
import 'package:supermarket/feature/login/ui/login_screen.dart';
import 'package:supermarket/feature/sign%20up/sign_up.dart';

class Routers {
  // static const String home = '/';
  static const String signUp = '/signUp';
  static const String home = '/home';


  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: signUp,
      builder: (context, state) => const SignUp(),
    ),
    GoRoute(
      path: home,
      builder: (context, state) => const HomeScreen(),
    ),


  ]);
}
