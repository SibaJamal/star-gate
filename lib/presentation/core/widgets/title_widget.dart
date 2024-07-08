import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const TitleWidget({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: onPressed,
                child: Container(
                    decoration: BoxDecoration(
                      color:midBlue,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.transparent),
                    ),
                    child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 35,)),
              ),
            ),
          ],
        ),
        Text(title,style: titleTextStyle,),
      ],
    );
  }
}
