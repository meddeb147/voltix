import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'page2.dart';



class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {



  @override
  void initState() {
    super.initState();
  }
  TextEditingController Superficie = TextEditingController();
  TextEditingController Operateur = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.white70.withOpacity(0.9),
  body: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints)  {
    return SingleChildScrollView(
  child: Padding(
    padding: EdgeInsets.fromLTRB(
      constraints.maxWidth * 0.05,
      constraints.maxHeight * 0.08,
      constraints.maxWidth * 0.05,
      50
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
              Center(
                child: Image.asset(
                          "lib/assets/pgsZL6FT_400x400-removebg-preview.png",
                          scale: 3,
                        ),
              ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              "lib/assets/image_2023-04-26_023030751-removebg-preview.png",
              scale: 2,
            ),
          ),
          SizedBox(
            height: 30,
          ),
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
      color: index == 1 ?  Colors.black :  Colors.grey,
    ),
          ),
        ),
      ),
      SizedBox(height: 30,),
        Center(
         
          child: Text(
            "Veilleiz donner un nom a votre site ",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 4, 103, 223),
            ),
          ),
        ),
        SizedBox(height: 10,),
         Container(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06),
           child: Text(
              "Surface plancher du site",
              style: TextStyle(
                fontSize: 15,
                color:Color.fromARGB(255, 100, 170, 255),
              ),
            ),
         ),
           SizedBox(height: 5,),
        Center(
          child: Container(
            width: constraints.maxWidth *0.8,
            child: TextFormField(
              controller: Superficie ,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 185, 181, 181)),
                ),
                hintText: 'Superficie',
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
        ),  
         SizedBox(height:10,),
          Container(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06),
            child: Text(
              "Activité principale",
              style: TextStyle(
                fontSize: 15,
                color:Color.fromARGB(255, 100, 170, 255),
              ),
            ),
          ),
           SizedBox(height: 5,),
        Center(
          child: Container(
            width: constraints.maxWidth *0.8,
            child: TextFormField(
              controller: Operateur ,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 185, 181, 181)),
                ),
                hintText: 'Operateur Telecome',
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
        ),      
  SizedBox( height: constraints.maxWidth *0.05,),             
            Center(       
              child: Container(
                height: 50,
                width: 100,
                 child: TextButton(
  onPressed: () async {
    Get.to(page2(),duration: Duration.zero);
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
  ),
  
              ),
            ),
            
          ])
          ) 
    );
  }));
  }
  
}
