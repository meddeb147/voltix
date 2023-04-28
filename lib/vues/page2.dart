import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Page3.dart';
import 'page7.dart';




final List<Map<String, dynamic>> countries = [
  {"name": "United States", "code": "US"},
  {"name": "Canada", "code": "CA"},
  {"name": "Tunisia", "code": "TN"},
  {"name": "United Kingdom", "code": "GB"},
  {"name": "France", "code": "FR"},
  // Add more countries here
];
class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  TextEditingController anneConstruction = TextEditingController();
  String _selectedCountryCode = "TN";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        return  SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child :
           Padding(
              padding: EdgeInsets.fromLTRB(constraints.maxWidth * 0.05, constraints.maxHeight * 0.08,
                  constraints.maxWidth * 0.05, 50),
              child: 
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
                color: index == 2 ?  Colors.black :  Colors.grey,
              ),
            ),
          ),
              ),
             
                    SizedBox(
                      height: 30,
                    ),
                        Center(
                          child: Text(
                            "Information du site ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 4, 103, 223),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                  margin: EdgeInsets.only( right: 180),
                  child: Text(
                    "Pays du Site",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                 Container(
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white
                  ),
                  child: DropdownButton(
                   // underline: Container(),
        
                    borderRadius: BorderRadius.circular(15),
                    elevation: 100,
                    hint: Text(""),
                    value: _selectedCountryCode,
                    items: countries.map((country) {
                      return DropdownMenuItem(
                        value: country["code"],
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              CountryCodePicker(
                                onChanged: print,
                                initialSelection: country["code"],
                                showCountryOnly: true,
                                showOnlyCountryWhenClosed: true,
                                favorite: [country["code"]],
                              ),
                              SizedBox(width: 8),
        
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedCountryCode = value.toString();
                      });
                    },
                  ),
                ),
                 SizedBox(height: 12,),
                Container(
                  margin: EdgeInsets.only( right: 120),
                  child: Text(
                    "Anne de construction ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 280,
                  //margin: EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: anneConstruction,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      hintText: 'Anne de Construction',
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
                SizedBox(height: 10,),
        
                Container(
                    height: 50,
                    width: 100,
                    child: TextButton(
                      onPressed: () async {
                        Get.to(()=> Page7(),duration: Duration.zero);
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
               
                      ]), 
          ),
        ));
      }),
    );
  }
}
