import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:star_gate/presentation/market/widgets/grid_card.dart';
import 'package:star_gate/presentation/theme/app_theme.dart';

import '../core/widgets/header.dart';
import 'widgets/cards.dart';

@RoutePage()
class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            const HeaderWidget(title: 'Market',),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Cards(category: 'clothes'),
                    Cards(category: 'tools'),
                    Cards(category: 'shoes'),
                    Cards(category: 'sinba'),
                    Cards(category: 'dfgdg'),
                    Cards(category: 'dfgdge'),
                    Cards(category: 'sfsdfsf'),
                    Cards(category: 'fdfgawdv'),
                    Cards(category: 'dfgdfg'),
                  ],
                          )),
             ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height *  0.78,
                child: GridView.builder(
                  itemCount: 100,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 3,
                  childAspectRatio: 200/300,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return const GridCard();
                }
                  ,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
