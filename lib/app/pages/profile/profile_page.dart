import 'package:desafio_trazfavela/app/pages/profile/components/profile_header.dart';
import 'package:desafio_trazfavela/app/pages/profile/components/profile_options.dart';
import 'package:desafio_trazfavela/app/pages/profile/profile_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "ProfilePage"}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/background.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          ProfileHeader(),
          Observer(
            builder: (context) => ListView.builder(
              itemCount: controller.profileOptions.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ProfileOptions(controller.profileOptions[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
