import 'package:desafio_trazfavela/app/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeController = HomeStoreBase with _$HomeController;

abstract class HomeStoreBase with Store {
  @observable
  int index = 0;

  @observable
  List<Widget> bodys = [
    Center(child: Text('Home')),
    Center(child: Text('Agendar')),
    Center(child: Text('Sacola')),
    Center(child: Text('Cardapio')),
    ProfilePage(),
  ];

  Future<void> changeIndex(int newIndex) async {
    index = newIndex;
  }
}
