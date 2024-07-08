import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_gate/presentation/core/widgets/gradient_text_button.dart';
import 'package:star_gate/presentation/routs/app_router.gr.dart';
import 'package:star_gate/presentation/theme/app_theme.dart';

@RoutePage()
class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Image.asset('assets/images/frame.png',width: double.infinity,fit: BoxFit.fitWidth,),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Text('Let the games begin',style:TextStyle(color: primaryColor,fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          GradientTextButton(onPressed: () { AutoRouter.of(context).replace(const SigningRoute()); }, text: 'Start',),

        ],
      ),
    );
  }
}



