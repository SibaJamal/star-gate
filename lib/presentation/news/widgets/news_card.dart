import 'package:flutter/cupertino.dart';

class NewsCard extends StatelessWidget {
  final String url;
  const NewsCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(url,fit: BoxFit.fill,width: 300,),
    );
  }
}
