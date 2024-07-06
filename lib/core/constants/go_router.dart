import 'package:go_router/go_router.dart';
import 'package:supermarket/feature/forgot%20password/ui/forgot_password_screen.dart';
import 'package:supermarket/feature/home/ui/home_screen.dart';
import 'package:supermarket/feature/login/ui/login_screen.dart';
import 'package:supermarket/feature/sign%20up/ui/sign_up.dart';

class Routers {
  static const String login = '/';
  static const String signUp = '/signUp';
  static const String home = '/home';
  static const String forgotPassword = '/forgotPassword';

  static final router = GoRouter(routes: [
    GoRoute(
      path: login,
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
    GoRoute(
      path: forgotPassword,
      builder: (context, state) => const ForgotPassword(),
    ),
  ]);
}
