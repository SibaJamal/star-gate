import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String url;
  final PageRouteInfo<dynamic> pageRouteInfo;
  const ListItem({super.key, required this.title, required this.url, required this.pageRouteInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        { AutoRouter.of(context).push(pageRouteInfo);}
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(url,width: 50,height: 50,)),
          ),
          Text(title,style: TextStyle(color: secondaryColor),),
        ],
      ),
    );
  }
}
