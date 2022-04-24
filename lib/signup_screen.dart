import 'package:flutter/material.dart';


class Signup_Screen extends StatefulWidget {
  const Signup_Screen({ Key? key }) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                    labelText: 'Phone number', hintText: 'Enter your Phone number',
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
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  ),
            ),
            SizedBox(
                  height: 120,
                  ),
      

          ],
        ),
      ),
    );
  }
}
