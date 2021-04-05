import 'package:desafio_trazfavela/app/models/profile_option.dart';
import 'package:desafio_trazfavela/app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  final ProfileOption profileOption;

  ProfileOptions(this.profileOption);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: ListTile(
        onTap: () => print(profileOption.title),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              profileOption.icon,
              color: AppColors.white,
            ),
            SizedBox(width: 5),
            Text(
              profileOption.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.white,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
