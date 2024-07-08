import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:star_gate/presentation/core/widgets/gradient_text_button.dart';
import 'package:star_gate/presentation/routs/app_router.gr.dart';
import '../../core/widgets/title_widget.dart';
import 'package:star_gate/presentation/theme/app_theme.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.only(top:30),
          child: Column(
            children: [
              TitleWidget(title: 'sign in to your account',onPressed:(){ AutoRouter.of(context).back();}),
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 50),
                child: TextFormField(
                  style:  TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline,color: primaryColor,),
                    hintText: 'your Email',
                    hintStyle: TextStyle(color: textGrey),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 50.0),
                child: TextFormField(
                  style:  TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline,color: primaryColor,),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: textGrey),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              GradientTextButton(onPressed: (){ AutoRouter.of(context).push(const MainRoute());}, text: 'Sign In'),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Text('forget your password?',style: TextStyle(color: primaryColor,fontSize: 15),),
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              const Text('Or login with',style: TextStyle(fontSize: 20),),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              TextButton(
                  style: TextButton.styleFrom(backgroundColor: textGrey,maximumSize: const Size(220,50),),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/google.svg',width: 13,height: 24,),
                    const SizedBox(width: 10),
                    const Text('Google',style: TextStyle(color: Colors.black,fontSize: 25,),),
                  ],
                ),
                     ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: textGrey,maximumSize: const Size(220,50),),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/facebook.svg'),
                    const SizedBox(width: 10),
                    const Text('Facebook',style: TextStyle(color: Colors.black,fontSize: 25,),),
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


/// change the routing
