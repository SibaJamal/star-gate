import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_gate/presentation/theme/app_theme.dart';

class CustomAppBar extends StatelessWidget implements  PreferredSizeWidget  {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading:GestureDetector(
        onTap: (){
          AutoRouter.of(context).back();
        },
        child: Icon(
          size: 30,
          Icons.arrow_back,
          color: primaryColor,
        ),
      ),
          title:Text(title,style: TextStyle(color: primaryColor,fontSize: 24,fontWeight: FontWeight.bold),)
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
