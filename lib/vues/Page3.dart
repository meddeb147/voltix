import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';

import 'page4.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Page3() ,
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  TextEditingController NbPersonnel = TextEditingController();


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
              color: index == 4 ?  Colors.black :  Colors.grey,
            ),
          ),
        ),
      ),
      SizedBox(height: 30,),
                Padding(
                 padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Nombre du personnel",
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
                      controller: NbPersonnel,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 185, 181, 181)),
                        ),
                        hintText: '0',
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
  SizedBox( height: constraints.maxWidth *0.25,),             
                    Center(       
                      child: Container(
                        height: 50,
                        width: 100,
                         child: TextButton(
  onPressed: () async {
    Get.to(Page4(),duration: Duration.zero);
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
                    
                  ]),
       ] )
          ) 
    );
  }));
  }
  
}
