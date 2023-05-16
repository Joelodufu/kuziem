import 'package:flutter/widgets.dart';
import 'package:kuziem/screens/mobile/add_class/add_class_screen.dart';
import 'package:kuziem/screens/mobile/cart/cart_screen.dart';
import 'package:kuziem/screens/mobile/complete_profile/complete_profile_screen.dart';
import 'package:kuziem/screens/mobile/courses/courses_screen.dart';
import 'package:kuziem/screens/mobile/forgot_password/forgot_password_screen.dart';
import 'package:kuziem/screens/mobile/home_screen/home_screen.dart';
import 'package:kuziem/screens/mobile/kuzbot/kuzbot_screen.dart';
import 'package:kuziem/screens/mobile/login/login.dart';
import 'package:kuziem/screens/mobile/login_success/login_success_screen.dart';
import 'package:kuziem/screens/mobile/profile/profile_screen.dart';
import 'package:kuziem/screens/mobile/questions/question_screen.dart';
import 'package:kuziem/screens/mobile/settings/settings_screen.dart';
import 'package:kuziem/screens/mobile/splash/splashscreenpage.dart';
import 'package:kuziem/screens/mobile/student_home/student_home_screen.dart';
import 'package:kuziem/screens/mobile/teachers_contents/my_courses_list/my_courses_list_screen.dart';
import 'package:kuziem/screens/mobile/teachers_contents/register_form/register_form_screen.dart';
import 'package:kuziem/screens/mobile/teachers_contents/register_splash/register_splash_screen.dart';
import 'package:kuziem/screens/mobile/teachers_contents/teacher_home/teacher_home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreenPage.routeName: (context) => SplashScreenPage(),
  Login.routeName: (context) => Login(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  StudentHomeScreen.routeName: (context) => const StudentHomeScreen(),
  CoursesScreen.routeName: (context) => const CoursesScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  QuestionScreen.routeName: (context) => const QuestionScreen(),
  SettingsScreen.routeName: (context) => const SettingsScreen(),
  RegisterSplashScreen.routeName: (context) => const RegisterSplashScreen(),
  RegisterFormScreen.routeName: (context) => const RegisterFormScreen(),
  TeacherHomeScreen.routeName: (context) => const TeacherHomeScreen(),
  MyCoursesListScreen.routeName: (context) => const MyCoursesListScreen(),
  KuzBotScreen.routeName: (context) => const KuzBotScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  AddClassScreen.routeName: (context) => const AddClassScreen()
};
