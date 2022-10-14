import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:rentcar/form_validators.dart';
import 'package:rentcar/size_config.dart';
class Signinscreen extends StatefulWidget {
  const Signinscreen({Key? key}) : super(key: key);

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final Emailkey = GlobalKey<FormState>();
  final passkey = GlobalKey<FormState>();
  var _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
  }
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Scaffold
      (
       backgroundColor: Color(0xFF2C2B34),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getHeight(60),),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: getWidth(55)),
            child: Row(
              children: [
                SvgPicture.asset('assets/illustrations/alfa (1).svg',
                height: getHeight(100),),
                SizedBox(width: getWidth(13),),
                SvgPicture.asset('assets/illustrations/lexus.svg',
                  height: getHeight(90),),

                SizedBox(width: getWidth(13),),
                SvgPicture.asset('assets/illustrations/mercedes.svg',
                  height: getHeight(90),),

              ],
            ),
          ),
          SizedBox(height: getHeight(20),),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: getWidth(80)),
            child: Row(
              children: [
                SvgPicture.asset('assets/illustrations/volkswagen.svg',
                  height: getHeight(80),),
                SizedBox(width: getWidth(13),),
                SvgPicture.asset('assets/illustrations/jaguar.svg',
                  height: getHeight(80),),
              ],
            ),
          ),
          SizedBox(height: getHeight(70),),
          Center(
            child: Text('Sign-in !',
            style: TextStyle(
              fontSize: getHeight(30),
              fontWeight: FontWeight.w600,
              color: Colors.white,

            ),
            ),
          ),
          SizedBox(height: getHeight(30),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
            child: Container(
              height: getHeight(57),
              child: TextFormField(
                key: Emailkey,
                validator: EmailValidator(errorText: 'Email is wrong'),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: getHeight(20), horizontal: getWidth(10)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getHeight(15)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getHeight(12)),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: getHeight(15),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
            child: Container(
              height: getHeight(57),
              child: TextFormField(
                validator: passwordValidator(),

                key: passkey,
                obscureText: !_passwordVisible,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                     suffixIcon: IconButton(
                         onPressed:  () {
                         // Update the state i.e. toogle the state of passwordVisible variable
                         setState(() {
                           _passwordVisible = !_passwordVisible;
                         });
                       },
                         icon: Icon(
                           // Based on passwordVisible state choose the icon
                           _passwordVisible
                               ? Icons.visibility
                               : Icons.visibility_off,
                           color: Color(0xFF2C2B34),
                         ),
                     ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: getHeight(20), horizontal: getWidth(10)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getHeight(15)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(getHeight(12)),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,

                    )
                ),
              ),
            ),
          ),
          SizedBox(height: getHeight(20),),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal:getWidth(54)),
            child: Row(
              children: [
                Center(
                  child: InkWell(
                    child: Container(
                      height: getHeight(56),
                      width: getWidth(123),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(getHeight(20)),

                      ),
                      child: Center(
                        child: Text('Sign in',
                        style: TextStyle(
                          color: Color(0xFF2C2B34),
                          fontWeight: FontWeight.w600,
                          fontSize: getHeight(15),
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getWidth(18),),
                InkWell(
                  child: Text('Forgot Password ?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(13),
                  ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getHeight(10),),
          Center(child: Text('Or',
          style: TextStyle(
            color: Colors.white,
            fontSize: getHeight(15),
            fontWeight: FontWeight.w600,
          ),),),
          SizedBox(height: getHeight(10),),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(55)),
            child: Row(
              children: [
                Container(
                  height: getHeight(57),
                  width: getWidth(123),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(getHeight(15)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: getWidth(22),
                      ),
                      SvgPicture.asset('assets/illustrations/apple-logo.svg'),
                      SizedBox(
                        width: getWidth(13),
                      ),
                      Text(
                        'Apple',
                        style: TextStyle(
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C2B34)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: getWidth(18),
                ),
                Container(
                  height: getHeight(57),
                  width: getWidth(123),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(getHeight(15)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: getWidth(22),
                      ),
                      SvgPicture.asset('assets/illustrations/google.svg',
                      height: getHeight(30),),
                      SizedBox(
                        width: getWidth(13),
                      ),
                      Text(
                        'Google',
                        style: TextStyle(
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2C2B34)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),







        ],
      ),
    ));
  }
}
