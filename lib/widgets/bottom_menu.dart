import 'package:flutter/cupertino.dart';
import 'package:practica_flutter/models/menu_option.dart';
import 'package:practica_flutter/models/models.dart';
import 'package:practica_flutter/routes/app_routes.dart';
import 'package:practica_flutter/widgets/button_menu.dart';

class BottomMenu extends StatelessWidget {
  final List<MenuOption> items;

  const BottomMenu({Key? key,
    required this.items,

  }) : super(key: key);

  List<ButtonMenu> _getOptions(List<MenuOption> items) =>
      AppRoute.listScreens.map((option) => ButtonMenu(option: option)).toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: _getOptions(items),
        ),
      ),
    );
  }
}