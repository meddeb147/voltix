import 'dart:async';

import 'package:flutter/material.dart';

import 'page0.dart';


class TelecomLogo extends StatefulWidget {
  const TelecomLogo({Key? key}) : super(key: key);

  @override
  State<TelecomLogo> createState() => _TelecomLogoState();
}

class _TelecomLogoState extends State<TelecomLogo> {
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 400),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Page0()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: SafeArea(
        child: Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bienvenue", style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.bold, fontSize: 25),) ,
              Image.asset("lib/assets/pgsZL6FT_400x400-removebg-preview.png", scale: 2,)
            ],
          )
        ),
      ),
    );
  }
}
