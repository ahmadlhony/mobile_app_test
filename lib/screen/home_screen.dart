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
                      height: 250,
                      color: Colors.blue,
                    ),
                  ),
                  ClipPath(
                    clipper: new CurvedBottomClipper(),
                    child: Container(
                      height: 230,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue[100],
                      child: Center(
                        child: Image.network(
                          "https://www.boulderweekly.com/wp-content/uploads/2020/06/Twitter_Logo.png",
                          height: 110,
                          width: 110,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: () {},
                          )),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password"),
                ),
                // alignment: Alignment.centerRight,
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 28),
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
                  Text("data"),
                  TextButton(onPressed: () {}, child: Text("SignUp?"))
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

    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        (size.width / 2) + 50, size.height, size.width, size.height - 80);
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
