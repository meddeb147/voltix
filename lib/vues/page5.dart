import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dotcontroller.dart';
import 'package:get/get.dart';
import 'page6.dart';







class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  final DotController _dotController = DotController();
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: SafeArea(
        child :  ListView(
            padding: EdgeInsets.fromLTRB( MediaQuery.of(context).size.width * 0.05,
              MediaQuery.of(context).size.height * 0.08,
              MediaQuery.of(context).size.width * 0.05,
              50),
            children: [ 
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Image.asset(
                    "lib/assets/pgsZL6FT_400x400-removebg-preview.png",
                    scale: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "lib/assets/image_2023-04-26_023030751-removebg-preview.png",
                    scale: 2,
                  ),
                   SizedBox(height: 30,),
                           Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          7,
          (index) => Container(
            width: 10,
            height: 10,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 5 ?  Colors.black :  Colors.grey,
            ),
          ),
        ),
            ),
           
                  SizedBox(
                    height: 30,
                  ),
                      Center(
                        child: Text(
                          "Avez vous des étages hors du",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 4, 103, 223),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "rez de chaussé ?",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 4, 103, 223),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Padding(
                        padding: EdgeInsets.only( left :MediaQuery.of(context).size.width * 0.2,
                                                  right :MediaQuery.of(context).size.width * 0.02),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                              //  Get.to(Page8(),duration: Duration(milliseconds: 300),transition: Transition.rightToLeft);
                              },
                              child: Text(
                                "Non",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 3, 41, 86),
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*0.15,
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(Page6(),duration: Duration.zero);
                              },
                              child: const Text(
                                  "Oui ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Inter",
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              
                              style: TextButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 7, 70, 148),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]), 
         ] )
      ),
    );
  }
}
