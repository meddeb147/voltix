import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'voltix_logo_page.dart';




class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final formKey = GlobalKey<FormState>();
   bool _passwordVisible = false;
  TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(
          "lib/assets/image_2023-04-26_022636047-removebg-preview.png",
          scale: 2.3,
        ),
        SizedBox(height: 10,),
        Image.asset(
          "lib/assets/image_2023-04-26_023030751-removebg-preview.png",
          scale: 2,
        ),
        SizedBox(height: 10,),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 100, 170, 255),
                    ),
                  ),
                  SizedBox(height: 5,),
                  
                  Container(
                    
                    child: TextFormField(
                      
                      controller: email,
                     
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        hintText: 'Enter your email',
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
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      color:Color.fromARGB(255, 100, 170, 255),
                    ),
                  ),
                   SizedBox(height: 5,),
                  
                  TextFormField(
                    controller: password,
                   
                    validator: (value) {
                       if (value == null || value.isEmpty) {
                        return 'Password is required';
                      } else {
                        return null;
                      }
                    },
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 229, 227, 227)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 20, 21, 21).withOpacity(0.5),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 229, 235, 242),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xffF7F9F9),
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: constraints.maxWidth *0.03),
                 Row(
    children: [
      
       SizedBox(width: constraints.maxWidth *0.4),
      InkWell(
        onTap: () {
          //Get.to(ForgotPasswordPage(),transition: Transition.downToUp,duration: Duration(milliseconds: 400));
        },
        child: const Text(
          'Mot de passe oublié ?',
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 15,
            color: Color.fromARGB(255, 100, 170, 255),
          ),
        ),
      ),
    ],
  ),

  SizedBox( height: constraints.maxWidth *0.07,),
                          
                      Center(
                   
                        child: Container(
                          height: 50,
                          width: 100,
                           child: TextButton(
  onPressed: ()  {

  if (formKey.currentState!.validate()) {
   Get.to(VoltixLogo());
  } 
},

    child: Text(
      "Log in",
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
              ),
       ] )
          )
        
    );
  }));
  }
  
}
