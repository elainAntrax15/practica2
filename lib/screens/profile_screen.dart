import 'package:flutter/material.dart';
import 'package:practica_flutter/routes/app_routes.dart';
import 'package:practica_flutter/widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const <Widget> [
            FlutterLogo(size: 300),
            SizedBox(height: 5,),
            Text('Profile Screen'),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(items: AppRoute.listScreens,),
    );

  }
}