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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  child: Image.asset('asset/images/login.png'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Email
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Email' ,style: TextStyle(
                    color: Colors.grey
                  ),),
                  SizedBox(width: 60,),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,  
                      decoration: InputDecoration(
                        contentPadding:EdgeInsets.all(0),
                        border: InputBorder.none,                       
                        hintText: 'jilian.marocs@gmail.com',
                        hintStyle: TextStyle(
                          fontSize: 14.0
                         ),
                        suffixIcon: Icon(Icons.edit ,size: 18.0, 
                        color: Colors.grey),
                        suffixIconConstraints: BoxConstraints(),
                      
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),

              //Password
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Change Password' ,style: TextStyle(
                    color: Colors.grey
                  ),),
                   SizedBox(width: 30,),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                         contentPadding:EdgeInsets.all(0),
                        border: InputBorder.none,
                         hintStyle: TextStyle(
                          fontSize: 14.0
                         ),
                          hintText: 'Enter Your Password',
                          suffixIcon: Icon(Icons.edit ,size: 18.0,
                           color: Colors.grey),
                        suffixIconConstraints: BoxConstraints(),),
                          
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Personal Information',
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
                SizedBox(
                height: 20.0,
              ),
              //Name
              Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Full Name" ,style: TextStyle(
                    color: Colors.grey
                  ),),
                  SizedBox(width: 80,),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.name,                      
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none,
                          hintText: 'Julian Macros',
                          hintStyle: TextStyle(
                          fontSize: 14.0
                         ),
                          suffixIcon: Icon(Icons.edit ,size: 18.0, color: Colors.grey),
                        suffixIconConstraints: BoxConstraints(),),
                    ),
                  ),
                ],
              ),
              Divider(),
              //Phone number
              Row(
                children: [
                  Text("Phone Number" ,style: TextStyle(
                    color: Colors.grey
                  ),),
                  SizedBox(width: 50,),
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          fontSize: 14.0
                         ),
                        suffixIcon: Icon(Icons.edit ,color: Colors.grey ,size: 18.0),
                      suffixIconConstraints: BoxConstraints(),),
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Account',
                style: TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delete My Account'),
                    Container(
                      child: Image.asset('asset/images/delete.png'),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Clear History'),
                    Container(
                      child: Image.asset('asset/images/delete.png'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              Center(
                child: ElevatedButton(
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
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
