import 'package:flutter/material.dart';
import 'package:flutter_task1/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/onboarding.jpeg"),
              fit: BoxFit.cover,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding:EdgeInsets.symmetric(
              vertical: 240
            )),
            Image.asset(
              "assets/logo carrot.png",
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome\n to our store",
              textAlign:TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),

            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "get your groceries as fast as one hour",
              style: TextStyle(
                color: Colors.blueGrey,
              ),

            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const LoginScreen()));
                },
              color: Colors.green,
              minWidth:300,
              height: 60,
              shape:OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
              ),
              child: const Text(
                  "Get Started",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
