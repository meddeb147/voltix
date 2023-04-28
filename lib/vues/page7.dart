import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Page3.dart';
import 'page2.dart';



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
      home: const Page7() ,
    );
  }
}

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {



  @override
  void initState() {
    super.initState();
  }
 
 
List<String> _selectedDays = [];

Widget _buildDayButton(String label) {
  bool isSelected = _selectedDays.contains(label);
  return GestureDetector(
    onTap: () {
      setState(() {
        if (isSelected) {
          _selectedDays.remove(label);
        } else {
          _selectedDays.add(label);
        }
      });
    },
    child: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.orange : Color.fromARGB(255, 255, 255, 255),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: isSelected ? Color.fromARGB(255, 255, 255, 255) : Color.fromARGB(255, 46, 106, 208),
          ),
        ),
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.white70.withOpacity(0.9),
  body: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              constraints.maxWidth * 0.05,
              constraints.maxHeight * 0.08,
              constraints.maxWidth * 0.05,
              50),
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
                          color:
                              index == 3 ? Colors.black : Colors.grey,
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
                      "Information du site ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 103, 223),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 120),
                    child: Text(
                      "Jours de fréquentation",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 100, 170, 255),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

               Container(
                
                 child: Row(
                 children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                   Expanded(
                     child: _buildDayButton("L"),
                   ),
                   SizedBox(width: 3,),
                   Expanded(
                     child: _buildDayButton("M"),
                   ),
                   SizedBox(width: 3,),
                   Expanded(
                     child: _buildDayButton("Mer"),
                   ),
                   SizedBox(width: 3,),
                   Expanded(
                     child: _buildDayButton("J"),
                   ),
                   SizedBox(width: 3,),
                   Expanded(
                     child: _buildDayButton("V"),
                   ),
                   SizedBox(width: 3,),
                   Expanded(
                     child: _buildDayButton("S"),
                   ),
                   SizedBox(width: 3,),
                   Expanded(
                     child: _buildDayButton("D"),
                   ),
                 ],
               ),
               ),
  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 120),
                    child: Text(
                      "Heure de fréquentation",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 100, 170, 255),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                Row(
  children: [
    SizedBox(width: MediaQuery.of(context).size.width*0.2,),
    Expanded(
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintText: '08:00 AM',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 10,right: 10), // add left padding
      child: Text("Jusqu'a"),
    ),
    Expanded(
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintText: '18:00 PM',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    ),
  ],
),
  SizedBox(
                        height: constraints.maxWidth * 0.05,
                      ),
                 
                  SizedBox(
                    height: constraints.maxWidth * 0.05,
                  ),            
                    Center(       
                      child: Container(
                        height: 50,
                        width: 100,
                         child: TextButton(
  onPressed: () async {
    Get.to(Page3(),duration: Duration.zero);
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

