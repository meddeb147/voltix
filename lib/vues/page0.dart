import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page1.dart';


class Page0 extends StatefulWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  State<Page0> createState() => _Page0State();
}

class _Page0State extends State<Page0>  {


  bool selected = false;
final formKey = GlobalKey<FormState>();
bool _passwordVisible = false;
TextEditingController nomBatiment = TextEditingController();


@override
void initState() {
  super.initState();

  // Start a timer that will update the state after 2 seconds
  Timer(Duration( milliseconds: 0), () {
    setState(() {
      selected = true;
    });
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.9),
        resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding( 
             padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.05, MediaQuery.of(context).size.height*0.08, MediaQuery.of(context).size.width*0.05, 50) ,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisSize: MainAxisSize.max,
               children: [
                   SizedBox(
                     height: 140,
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
               color: index == 0 ?  Colors.black :  Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                   height: 30,
                 ),
                    Text("Veilleiz donner un nom  a votre site", style: TextStyle(fontSize: 15,
                           fontWeight: FontWeight.bold,
                           color: Color.fromARGB(255, 4, 103, 223),),),
                    SizedBox(height: 30,),
                    Form(
                        key: formKey,
                        child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06, right: 30),
                   child: Text(
                     "Nom du site",
                     style: TextStyle(
                       fontSize: 15,
                       color: Colors.blueAccent,
                     ),
                   ),
                 ),
                 SizedBox(height: 5,),
            
                 Container(
                       margin: EdgeInsets.only(left: 30, right: 30),
                   child: TextFormField(
                     controller: nomBatiment,
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                       ),
                       hintText: 'Batiment 1',
                       hintStyle: TextStyle(
                         fontSize: 15,
                         color: Color.fromARGB(255, 20, 21, 21).withOpacity(0.5),
                       ),
                       filled: true,
                       fillColor: Color.fromARGB(255, 229, 235, 242),
                     ),
                     style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                   ),
                 ),
               ],
                        )
            
            
            
                  ),
                 SizedBox(height: 30,),
                 Container(
                     height: 50,
                     width: 100,
                     child: TextButton(
                       onPressed: () async {
                          Get.to(()=> Page1(),duration: Duration.zero);
                       },
            
                       child: Text(
                         "Suivant",
                         style: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontFamily: "Inter",
                           fontSize: 20,
                           color: Color.fromARGB(255, 229, 237, 246),
                         ),
                       ),
                       style: TextButton.styleFrom(
                         backgroundColor: Color.fromARGB(255, 9, 91, 179),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                     )
                 )
                    ]
            
                ),
            ),
      
            AnimatedPositioned(
                height: 130,
                width: 180,
                top: selected ? 30 : 400,
                left: (MediaQuery.of(context).size.width - 180) /2,
      
                duration: Duration(milliseconds: 700),
                curve: Curves.fastOutSlowIn,
                child:
                Image.asset("lib/assets/pgsZL6FT_400x400-removebg-preview.png", )
      
            ),
      
      
      
          ]
          ),
      )
    );


  }

}
