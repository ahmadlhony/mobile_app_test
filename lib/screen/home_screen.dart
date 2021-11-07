import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: new CurvedBottomClipper(),
                    child: Container(
                      height: 270,
                      color: Colors.blue[100],
                    ),
                  ),
                  ClipPath(
                    clipper: new CurvedBottomClipper2(),
                    child: Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue[700],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://lh3.googleusercontent.com/proxy/PV2eRV2Y08UZAzvJd5F5cfeI07jpRccjPUJTh9UKyV7XX-gokRCPWzs9SXTuvNVLlxsG8hBBqW0IhwP3TM1Gq2tHupDWSo7TCiF4UspE3j5t",
                            height: 110,
                            width: 110,
                          ),
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility_off),
                          onPressed: () {},
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?"),
                ),
                // alignment: Alignment.centerRight,
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        // side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?"),
                  TextButton(onPressed: () {}, child: Text("SignUp"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 90);
    path.quadraticBezierTo(
        (size.width / 2) + 30, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // returning fixed 'true' value here for simplicity, it's not the part of actual question, please read docs if you want to dig into it
    // basically that means that clipping will be redrawn on any changes
    return true;
  }
}

class CurvedBottomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 90);
    path.quadraticBezierTo(
        (size.width / 2) + 50, size.height - 5, size.width, size.height - 95);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // returning fixed 'true' value here for simplicity, it's not the part of actual question, please read docs if you want to dig into it
    // basically that means that clipping will be redrawn on any changes
    return true;
  }
}
