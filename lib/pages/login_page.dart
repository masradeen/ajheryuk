import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const nameRoute = '/loginpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            Container(
              height: 150,
              child: Image.asset(
                "assets/logo/logo-only.png",
                fit: BoxFit.contain,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                fillColor: Colors.grey[300],
                border: InputBorder.none,
                filled: true,
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                label: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                fillColor: Colors.grey[300],
                border: InputBorder.none,
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(LoginPage.nameRoute);
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEC5F5F),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: () {},
                child: Text("Forgot Password"),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 1,
                      color: Color(0xFFC7C9D9),
                    ),
                  ),
                  Text(
                    " or ",
                    style: TextStyle(
                      color: Color(0xFFC7C9D9),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 1,
                      color: Color(0xFFC7C9D9),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(LoginPage.nameRoute);
                  },
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/fb.png"),
                      SizedBox(width: 10,),
                      Text(
                        "Log in with Facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0082CD),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(LoginPage.nameRoute);
                  },
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/google.png"),
                      SizedBox(width: 10,),
                      Text(
                        "Log in with Google",
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF6F7FA),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 45,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}