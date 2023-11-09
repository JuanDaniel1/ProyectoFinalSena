import 'package:flutter/widgets.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/pages/producto/producto_add_edit.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/chatbot/chatbotscreen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/chatbot/chatbotscreen.dart';
import 'package:shop_app/menu.dart';

import 'screens/sign_up/sign_up_screen.dart';
// Rutas para navegar entre varias secciones
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ChatBot.routeName: (context) => ChatBot(title: "ChatBot"),
  Menu.routeName: (context) => Menu(),
  ProductoAddEdit.routeName: (context) => ProductoAddEdit()
};


