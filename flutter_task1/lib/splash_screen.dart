import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetologin();
  }
  _navigatetologin()async{
  await  Future.delayed(const Duration(seconds: 3),(){});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder:(context)=>const OnBoardingScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body:  Container(
          width: double.infinity,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:(MediaQuery.of(context).size.height)*0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/logo carrot.png",
                        height: 60,
                          width: 60,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "nectar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:35,
                                color: Colors.white
                              ),
                            ),
                            Text("online groceries",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height)*0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    const CircularProgressIndicator(
                       color: Colors.white,
                     ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
