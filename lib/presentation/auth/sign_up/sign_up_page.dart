import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/gradient_text_button.dart';
import '../../core/widgets/title_widget.dart';
import '../../routs/app_router.gr.dart';
import '../../theme/app_theme.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isVisible= false;
  bool _isVisibleConfirm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:30),
          child: Column(
            children: [
              TitleWidget(title: 'create your account',onPressed:(){ AutoRouter.of(context).back();}),
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
                    hintText: 'User Name',
                    hintStyle: TextStyle(color: textGrey),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 50),
                child: TextFormField(
                  style:  TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined,color: primaryColor,),
                    hintText: 'Your Email',
                    hintStyle: TextStyle(color: textGrey),
                  ),
                  keyboardType: TextInputType.emailAddress,
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
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      icon: _isVisible? Icon(Icons.visibility,color: primaryColor,):Icon(Icons.visibility_off,color: primaryColor,),),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: textGrey),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: !_isVisible,
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
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _isVisibleConfirm = !_isVisibleConfirm;
                        });
                      },
                      icon: _isVisibleConfirm? Icon(Icons.visibility,color: primaryColor,):Icon(Icons.visibility_off,color: primaryColor,),),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: textGrey),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: !_isVisibleConfirm,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              GradientTextButton(onPressed: (){ AutoRouter.of(context).push(const MainRoute());}, text: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
