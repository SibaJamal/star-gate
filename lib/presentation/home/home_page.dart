import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_gate/presentation/home/widgets/list_item.dart';
import 'package:star_gate/presentation/home/widgets/video_container.dart';

import '../routs/app_router.gr.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0,right: 15,left: 15),
          child: Column(
            children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('My lists',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),),
              ],
            ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListItem(title: 'Players', url: 'assets/images/players.png',pageRouteInfo:PlayersRoute()),
                  ListItem(title: 'Market', url: 'assets/images/market.png',pageRouteInfo:MarketRoute()),
                  ListItem(title: 'Videos', url: 'assets/images/videos.png',pageRouteInfo:VideoRoute()),
                  ListItem(title: 'News', url: 'assets/images/news.png',pageRouteInfo:NewsRoute()),
            ],
          ),
              const VideoContainer(title: 'Most Viewed Videos',description: 'The NFL preseason is set to begin soon',url: 'assets/images/vid2.png',),
              const VideoContainer(title: 'Most Downloaded Videos',description: 'The UEFA  European championship took place earlier this summer',url: 'assets/images/vid1.png',),
        ]),
            ),
      ));
  }
}
