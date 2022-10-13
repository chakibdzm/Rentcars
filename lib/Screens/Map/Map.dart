import 'package:flutter/material.dart';
import 'package:rentcar/size_config.dart';
class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,

    ));
  }
}
