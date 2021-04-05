import 'package:desafio_trazfavela/app/models/profile_option.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileController = _ProfileStoreBase with _$ProfileController;

abstract class _ProfileStoreBase with Store {
  @observable
  List<ProfileOption> profileOptions = [
    ProfileOption(title: 'Meu Perfil', icon: Icons.person_outline),
    ProfileOption(title: 'Histórico', icon: Icons.file_copy_outlined),
    ProfileOption(title: 'Cardápio', icon: Icons.receipt),
    ProfileOption(title: 'Carteira', icon: Icons.credit_card_outlined),
    ProfileOption(title: 'Configurações', icon: Icons.settings_outlined),
    ProfileOption(title: 'Suporte', icon: Icons.chat_outlined),
    ProfileOption(title: 'Log out', icon: Icons.logout),
  ];
}
