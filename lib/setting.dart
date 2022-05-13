import 'package:flutter/material.dart';
import 'package:splash_screen/login_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.asset('asset/images/login.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Email
              Row(
                children: [
                  Text('data'),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'jilian.marocs@gmail.com',
                      ),
                    ),
                  ),
                ],
              ),

              //Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Change Password',
                    hintText: 'Enter Your Password'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Personal Information',
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),

              //Name
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Full Name', hintText: 'Julian Macros'),
              ),
              //Phone number
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Account',
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delete My Account'),
                  Container(
                    child: Image.asset('asset/images/delete.png'),
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Clear History'),
                  Container(
                    child: Image.asset('asset/images/delete.png'),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => LoginScreen())), (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    child: Text(
                      'LOGOUT',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
