import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentcar/size_config.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  final CameraPosition _initialPosition=CameraPosition(target:LatLng(24.903623,67.198367));
  var currentPos;
  var currentLat=37.43296265331129;
  var currentLong=-122.08832357078792;
  var markers=[];
  @override
  void initState(){
    super.initState();
    getcurrentlocation();
  }
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
                  width: getWidth(50),
                ),
                SvgPicture.asset('assets/illustrations/info1.svg'),
                SizedBox(
                  width: getWidth(11),
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
                  width: getWidth(35),
                ),
                SvgPicture.asset('assets/illustrations/bell.svg'),
                SizedBox(width: getWidth(13),),
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
                          height: getHeight(240),
                          width: getWidth(319),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getHeight(20)),
                            color: Color(0xF787878),
                          ))),
                  Positioned(
                    child: Text(
                      'NEAREST CAR',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: getHeight(15),
                        color: Color(0xFF787878),
                      ),
                    ),
                    top: getHeight(17),
                    left: getWidth(22),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/illustrations/image 29.png',
                    ),
                    top: getHeight(40),
                    left: getWidth(8),
                  ),
                  Positioned(
                    child: Text(
                      'Fortuner GR',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: getHeight(20),
                        color: Colors.black,
                      ),
                    ),
                    bottom: getHeight(30),
                    left: getWidth(22),
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/illustrations/jam_gps-f.svg'),
                        Text(
                          ' > 870Km',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: getHeight(12),
                          ),
                        ),
                        SizedBox(
                          width: getWidth(15),
                        ),
                        SvgPicture.asset(
                            'assets/illustrations/bxs_gas-pump.svg'),
                        Text(
                          ' 50L',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: getHeight(12),
                          ),
                        ),
                      ],
                    ),
                    left: getWidth(22),
                    bottom: getHeight(10),
                  ),
                  Positioned(
                    child: Text(
                      '\$ 45,00/h',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getHeight(16),
                      ),
                    ),
                    right: getWidth(31),
                    bottom: getHeight(10),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getHeight(22),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(28)),
              child: Row(
                children: [
                  Container(
                    height: getHeight(190),
                    width: getWidth(151),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getHeight(20)),
                      color: Color(0xF787878),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: getHeight(27),
                          ),
                          Image.asset('assets/illustrations/Ellipse 52.png'),
                          SizedBox(
                            height: getHeight(14),
                          ),
                          Text(
                            'Jane Cooper',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: getHeight(14),
                            ),
                          ),
                          Text(
                            '\$ 4,253',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: getHeight(14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(17),
                  ),

                  Container(
                    height: getHeight(190),
                    width: getWidth(151),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getHeight(20)),
                      color: Color(0xF787878),
                    ),
                    child: GoogleMap(initialCameraPosition: _initialPosition,
                    mapType: MapType.normal
                      ,
                      myLocationButtonEnabled: true,
                      myLocationEnabled: true,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(28)),
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: getHeight(220),
                    width: getWidth(319),
                    decoration: BoxDecoration(
                        color: Color(0xFF282931),
                        borderRadius: BorderRadius.circular(getHeight(20))),
                  )),
                  Positioned(
                    child: Text(
                      'More Cars',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: getHeight(14),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    left: getWidth(24),
                    top: getHeight(21),
                  ),
                  Positioned(
                    child: Text(
                      'Corolla Cross',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getHeight(20),
                        color: Colors.white,
                      ),
                    ),
                    left: getWidth(25),
                    top: getHeight(55),
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/illustrations/jam_gps-f.svg'),
                        Text(
                          ' > 870Km',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: getHeight(12),
                          ),
                        ),
                        SizedBox(
                          width: getWidth(26),
                        ),
                        SvgPicture.asset(
                            'assets/illustrations/bxs_gas-pump.svg'),
                        Text(
                          '  50L',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: getHeight(12),
                          ),
                        ),
                      ],
                    ),
                    left: getWidth(24),
                    top: getHeight(89),
                  ),
                  Positioned(
                    child: SvgPicture.asset(
                      'assets/illustrations/Line 31.svg',
                      width: getWidth(320),
                    ),
                    left: getWidth(25),
                    top: getHeight(125),
                    right: getWidth(25),
                  ),
                  Positioned(
                    child: InkWell(
                      onTap: () => print('pressed'),
                      child: Container(
                        height: getHeight(32),
                        width: getWidth(32),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: getHeight(15),
                        )),
                      ),
                    ),
                    right: getWidth(25),
                    top: getHeight(65),
                  ),
                  Positioned(
                    child: InkWell(
                      onTap: () => print('pressed'),
                      child: Container(
                        height: getHeight(32),
                        width: getWidth(32),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: getHeight(15),
                        )),
                      ),
                    ),
                    right: getWidth(25),
                    bottom: getHeight(35),
                  ),
                  Positioned(
                    child: Text(
                      'Lonic 5',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getHeight(20),
                        color: Colors.white,
                      ),
                    ),
                    left: getWidth(25),
                    bottom: getHeight(53),
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/illustrations/jam_gps-f.svg'),
                        Text(
                          ' > 70Km',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: getHeight(12),
                          ),
                        ),
                        SizedBox(
                          width: getWidth(26),
                        ),
                        SvgPicture.asset(
                            'assets/illustrations/bxs_gas-pump.svg'),
                        Text(
                          '  50L',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: getHeight(12),
                          ),
                        ),
                      ],
                    ),
                    left: getWidth(24),
                    bottom: getHeight(27),
                  ),
                  Positioned(
                    child: InkWell(
                        onTap: () => print('pressed'),
                        child:
                            SvgPicture.asset('assets/illustrations/Group.svg')),
                    right: getWidth(29),
                    top: getHeight(25),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  getcurrentlocation()async{
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then((Position pos) async{
      setState(() {
        currentPos=pos;
        currentLat=pos.latitude;
        currentLong=pos.longitude;

      });
    });
  }
}
