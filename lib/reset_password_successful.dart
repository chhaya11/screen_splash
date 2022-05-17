import 'package:flutter/material.dart';
import 'package:splash_screen/home.dart';

class ResetPassSuccess extends StatefulWidget {
  const ResetPassSuccess({Key? key}) : super(key: key);

  @override
  State<ResetPassSuccess> createState() => _ResetPassSuccessState();
}

class _ResetPassSuccessState extends State<ResetPassSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("asset/images/checked-green.png"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("THANK YOU" , style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600
            ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("You have successfully reset your password." , style: TextStyle(
                fontSize: 14.0
              ),),
            ),
            SizedBox(
              height: 50.0,
            ),            
              ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => HomeScreen()));
              }, 
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              primary: Colors.black,
              ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:15.0 ,horizontal: 40.0),
                  child: Text("DONE",style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ),
              )
            
            
          ],
        ),
      ),
    );
  }
}
