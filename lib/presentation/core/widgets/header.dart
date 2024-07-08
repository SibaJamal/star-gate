import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_gate/presentation/theme/app_theme.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,top: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              AutoRouter.of(context).back();
            },
            child: Icon(
              size: 30,
              Icons.arrow_back,
              color: primaryColor,
            ),
          ),
          const SizedBox(width: 20,),
          Text(title,style: TextStyle(color: primaryColor,fontSize: 24,fontWeight: FontWeight.bold),)
        ],

      ),
    );
  }
}
