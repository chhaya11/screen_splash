import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("asset/images/login.png"),
              ),
              Text(
                "WELCOME BACK!",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Login to your account",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email", hintText: 'Enter your email address'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', hintText: 'Enter your password'),
                ),
              ),
              TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              Container(
                height: 50.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    ),
              ),
              SizedBox(
                    height: 120,
                    ),
              Row(
                children: [
                  Text('Does not have an account?'),
                  TextButton(onPressed: (){
      
                  }, child: Text('Signup'))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
      
            ],
          ),
        ),
      ),
    );
  }
}
