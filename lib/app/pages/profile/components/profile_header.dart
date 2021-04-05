import 'package:desafio_trazfavela/app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 50, bottom: 10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bk_logo.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          'Burger King',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Rua a, nº 0',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
