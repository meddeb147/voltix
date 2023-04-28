import 'dart:async';
import 'package:flutter/material.dart';

import 'telecom_screen.dart';


class VoltixLogo extends StatefulWidget {
  const VoltixLogo({Key? key}) : super(key: key);

  @override
  State<VoltixLogo> createState() => _VoltixLogoState();
}

class _VoltixLogoState extends State<VoltixLogo> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 500),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                TelecomLogo() 
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: Container(
        child: Center(
          child: Image.asset("lib/assets/image_2023-04-26_022636047-removebg-preview.png"),

        ),
      ),
    );
  }
}
