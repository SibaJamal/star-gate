import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:star_gate/presentation/news/widgets/news_card.dart';

import '../core/widgets/custom_app_bar.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar( title:'News',),
          body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.001,),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
                      child: Text('Breaking News',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      NewsCard(url: 'assets/images/vid1.png'),
                      NewsCard(url: 'assets/images/vid2.png'),
                      NewsCard(url: 'assets/images/vid1.png'),
                      NewsCard(url: 'assets/images/vid2.png'),
                      NewsCard(url: 'assets/images/vid1.png'),
                      NewsCard(url: 'assets/images/vid2.png'),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
                      child: Text('Latest News',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      NewsCard(url: 'assets/images/st.png'),
                      NewsCard(url: 'assets/images/vid2.png'),
                      NewsCard(url: 'assets/images/vid1.png'),
                      NewsCard(url: 'assets/images/vid2.png'),
                      NewsCard(url: 'assets/images/vid1.png'),
                      NewsCard(url: 'assets/images/vid2.png'),
                    ],
                  ),
                ),

              ]),
      )),
    );
  }
}
