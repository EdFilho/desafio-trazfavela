import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:desafio_trazfavela/app/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio_trazfavela/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(
            icon: Icons.home,
            title: 'Home',
          ),
          TabItem(
            icon: Icons.calendar_today,
            title: 'Agendar',
          ),
          TabItem(
            icon: Icons.shopping_basket,
            title: 'Sacola',
          ),
          TabItem(
            icon: Icons.receipt,
            title: 'Cardapio',
          ),
          TabItem(
            icon: Icons.person,
            title: 'perfil',
          ),
        ],
        initialActiveIndex: 0,
        backgroundColor: AppColors.white,
        activeColor: AppColors.primaryColor,
        color: Colors.grey,
        onTap: (index) => controller.changeIndex(index),
      ),
      body: Observer(builder: (context) => controller.bodys[controller.index]),
    );
  }
}
