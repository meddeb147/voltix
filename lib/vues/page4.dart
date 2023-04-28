import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page5.dart';
import 'page6.dart';




class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int _radioValue = 0;
  String? _selectedValue="GTC";
  bool _isDropDownVisible = false;
  @override
  void initState() {
    super.initState();
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
                  0),
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
              color: index == 4 ?  Colors.black :  Colors.grey,
            ),
          ),
        ),
      ),
     
                  SizedBox(
                    height: 30,
                  ),
                      Container(
                         decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(255, 211, 211, 211),
      width: 3,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _radioValue,
                            onChanged: (value) {
   setState(() {
  if (_radioValue == value) {
    _radioValue = 0; // toggle back to 0 if already selected
    _isDropDownVisible = false;
  } else {
    _radioValue = value as int;
    _isDropDownVisible = _radioValue == 1;
  }
});

                            },
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                    if (_radioValue == 1) {
    _radioValue = 0; // toggle back to 0 if already selected
    _isDropDownVisible = false;
  } else {
    _radioValue = 1 as int;
    _isDropDownVisible = _radioValue == 1;
  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                               
                                child: Text(
                                  "Presence d'une GTBT/GTC ?",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: _radioValue == 1 ? Color.fromARGB(255, 230, 138, 0) : Color.fromARGB(255, 20, 21, 21).withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                         

                        ],
                      ),
                      ),


                    SizedBox(
                      height: constraints.maxWidth * 0.03,
                    ),
                    Visibility(
  visible: _isDropDownVisible,
  child: Container(
    width: MediaQuery.of(context).size.width*0.9,
     decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(255, 211, 211, 211),
      width: 3,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
    padding: EdgeInsets.symmetric(horizontal: 12.0),
    child: DropdownButton<String>(
      value: _selectedValue,
      onChanged: (value) {
        setState(() {
          _selectedValue = value;
        });
      },
      items: [
        DropdownMenuItem(child: Text("GTC"), value: "GTC"),
        DropdownMenuItem(child: Text("GTBT"), value: "GTBT"),
       
      ],
    ),
  ),
),

                   SizedBox(
                      height: constraints.maxWidth * 0.03,
                    ),

                    Center(
                      child: Container(
                        height: 50,
                        width: 100,
                        child: TextButton(
                          onPressed: () async {
                            Get.to(Page5(),duration: Duration.zero);
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
            ]),
          ));
        }));
  }
}



