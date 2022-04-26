import 'package:flutter/material.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  bool agree = false;
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
                "CREATE ACCOUNT!",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign up to get started",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Full Name", hintText: 'Enter your name'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email", hintText: 'Enter your Email'),
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
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Phone number',
                    hintText: 'Enter your Phone number',
                  ),
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
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: agree,
                      onChanged: (value) {
                        setState(() {
                          agree = value ?? false;
                        });
                      }),
                  Text(
                    "By Singing up, you accept the terms of condition \n and privacy policy",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                    overflow: TextOverflow.clip,
                  )
                ],
              ),
               SizedBox(
                height: 60,
              ),
                Row(
              children: [
                Text('Already have an account?'),
                TextButton(onPressed: (){

                }, child: Text('login'))
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
