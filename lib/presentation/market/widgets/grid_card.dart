import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class GridCard extends StatefulWidget {
  const GridCard({super.key});

  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  @override
  Widget build(BuildContext context) {
    return            SizedBox(
      height:225,
      width: 190,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.transparent)),
                child: GestureDetector(
                    onTap: (){
                    },
                    child: Image.asset('assets/images/t.png',width: 200,)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.009),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'T-shirt',
                            overflow: TextOverflow.ellipsis,
                            maxLines:1,
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 16,),
                          ),
                          Text(
                            'subtitle',
                            overflow: TextOverflow.ellipsis,
                            maxLines:1,
                            style: TextStyle(
                                fontSize:14,
                                fontWeight: FontWeight.bold,
                                color: textGrey),
                          ),

                        ],
                      ),
                    ),
                    GestureDetector(
                      child: const Icon(
                        size: 24,
                        Icons.shopping_cart_outlined,
                        color: Color(0xff817FD1),
                      ),
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
