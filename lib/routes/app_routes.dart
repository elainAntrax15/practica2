import 'package:flutter/material.dart';
import 'package:practica_flutter/models/menu_option.dart';
import 'package:practica_flutter/screens/home_screen.dart';
import 'package:practica_flutter/screens/login_screen.dart';
import 'package:practica_flutter/screens/orders_screen.dart';
import 'package:practica_flutter/screens/profile_screen.dart';
import 'package:practica_flutter/screens/singup_screen.dart';


class AppRoute {
  static const String root = '/';
  static final List<MenuOption> listScreens = [
    MenuOption(
      icon: Icons.house_outlined,
      route: '/',
      screen: const HomeScreen(),
      title: 'House',
    ),

    MenuOption(
      route: '/orders',
      title: 'Orders',
      icon: Icons.list_outlined,
      screen: const OrdersScreen(),
    ),

    MenuOption(
      route: '/profile',
      title: 'Profile',
      icon: Icons.person_outlined,
      screen: const ProfileScreen(),
    ),

    MenuOption(
      route: '/login',
      title: 'Login',
      icon: Icons.login_outlined,
      screen: const LoginScren(),
    ),

    MenuOption(
      route: '/singup',
      title: 'Sing Up',
      icon: Icons.account_circle_outlined,
      screen: const SingupScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (MenuOption item in listScreens) {
      routes[item.route] = (context) => item.screen;
    }
    return routes;
  }
}