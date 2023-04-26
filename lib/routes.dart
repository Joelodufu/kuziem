import 'package:flutter/widgets.dart';
import 'package:kuziem/screens/mobile/complete_profile/complete_profile_screen.dart';
import 'package:kuziem/screens/mobile/forgot_password/forgot_password_screen.dart';
import 'package:kuziem/screens/mobile/login/login.dart';
import 'package:kuziem/screens/mobile/login_success/login_success_screen.dart';
import 'package:kuziem/screens/mobile/splash/splashscreenpage.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreenPage.routeName: (context) => SplashScreenPage(),
  Login.routeName: (context) => Login(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen()
};
