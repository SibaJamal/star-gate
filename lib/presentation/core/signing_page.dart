import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:star_gate/presentation/core/widgets/gradient_text_button.dart';

import '../routs/app_router.gr.dart';
import '../theme/app_theme.dart';

@RoutePage()
class SigningPage extends StatelessWidget {
  const SigningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          Image.asset('assets/images/sport2.png',width: double.infinity,fit: BoxFit.fitWidth,),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          GradientTextButton(onPressed: () { AutoRouter.of(context).push(const SignInRoute()); }, text: 'Sign In',),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          TextButton(
            onPressed: (){AutoRouter.of(context).push(const SignUpRoute());},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side:BorderSide(
                  color: midBlue,
                  width: 2.0,
              ),),),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 50),
              child: Text('Sign Up',style: TextStyle(color: midBlue,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}
