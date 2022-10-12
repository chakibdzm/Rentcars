import 'package:flutter/material.dart';
import 'package:rentcar/Screens/Home/Myhome.dart';

import '../size_config.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  @override


  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFF2C2B34),

      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/illustrations/image 27.png',
          height: 450,
          ),
          SizedBox(height: getHeight(0),),
          Padding(
            padding: EdgeInsets.only(left: getWidth(29)),
            child: Text('Premium cars.\nEnjoy the luxury',
            style: TextStyle(
              color: Colors.white,
              fontSize: getHeight(35.2),
              fontWeight: FontWeight.w700,
            ),),
          ),
          SizedBox(height: getHeight(12),),
          Padding(
            padding:  EdgeInsets.only(left: getWidth(29)),
            child: Text('Premium and prestige car daily rental.'
                ' Experience the thrill at a lower price',
            style: TextStyle(
              color: Colors.grey,
              fontSize: getHeight(15),
              fontWeight: FontWeight.w400,
            ),

            ),
          ),
           SizedBox(height: getHeight(43),),
          Center(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Myhome())),
              child: Container(
                height: getHeight(54),
                width: getWidth(319),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(getHeight(50)),
                ),
                child: Center(
                  child: Text('Let s Go',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: getHeight(20),
                  ),),
                ),
              ),
            ),
          )

        ],
      )
    ));
  }
}
