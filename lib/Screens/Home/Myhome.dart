import 'package:flutter/material.dart';
import 'package:rentcar/size_config.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getHeight(17),
          ),
          Row(
            children: [
              SizedBox(
                width: getWidth(82),
              ),
              Text(
                'Information',
                style: TextStyle(
                  fontSize: getHeight(16),
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: getWidth(58),
              ),
              Text(
                'Notifications',
                style: TextStyle(
                  fontSize: getHeight(16),
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(28)),
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                        height: getHeight(234),
                        width: getWidth(319),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHeight(20)),
                          color: Color(0xF787878),
                        ))),
                Positioned(child: Text('NEAREST CAR',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: getHeight(15),
                  color: Color(0xFF787878),
                ),),
                top: getHeight(17),
                  left: getWidth(22),
                ),
                Positioned(child: Image.asset('assets/illustrations/image 29.png',),
                top: getHeight(40),
                  left: getWidth(8),
                ),
                Positioned(child: Text('Fortuner GR',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: getHeight(20),
                    color: Colors.black,
                  ),),
                bottom: getHeight(30),
                  left: getWidth(22),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
