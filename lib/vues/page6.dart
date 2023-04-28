import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {

  TextEditingController NbEtage = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

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
              color: index == 6 ?  Colors.black :  Colors.grey,
            ),
          ),
        ),
      ),
     
                  SizedBox(
                    height: 30,
                  ),
                Padding(
                 padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Nombre d'etages",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 103, 223),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Center(
                  child: Container(
                    width: constraints.maxWidth *0.8,
                    child: TextFormField(
                       
                      controller: NbEtage,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        hintText: 'R+ 0',
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
               
  SizedBox( height: constraints.maxWidth *0.15,),
                        
                    Center(
                 
                      child: Container(
                        height: 50,
                        width: 100,
                         child: TextButton(
  onPressed: () async {
  //Get.to(Page8(),duration: Duration(milliseconds: 400),transition: Transition.rightToLeft);
},

    child: Text(
      "Finaliser",
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
                    
                  ]),
       ] )
          ) 
    );
  }));
  }
  
}
