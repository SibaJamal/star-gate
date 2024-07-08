import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class VideoContainer extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  const VideoContainer({super.key, required this.title, required this.url, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0,),
                child: Text(title,style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                ),),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(url,width: MediaQuery.of(context).size.width*0.95,fit: BoxFit.fitWidth,),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    width:MediaQuery.of(context).size.width*0.92 ,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
                      child: Text(description,style: const TextStyle(color: Colors.white,fontSize: 15),maxLines: 2,),
                    )),
              ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// do this
                const Text('255 views'),
                const SizedBox(width: 30,),
                Text('1 mo ago',style: TextStyle(color: textGrey),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
