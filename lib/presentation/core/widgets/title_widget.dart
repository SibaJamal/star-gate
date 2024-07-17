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
                child: Icon(
                  size: 30,
                  Icons.arrow_back,
                  color: primaryColor,
                  ),
              ),
            ),
          ],
        ),
        Text(title,style: titleTextStyle,),
      ],
    );
  }
}
