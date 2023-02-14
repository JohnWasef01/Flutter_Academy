import 'package:flutter/material.dart';
import 'package:flutter_task1/gridview_screen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
final TextEditingController controller = TextEditingController();
String initialCountry = 'NG';
PhoneNumber number = PhoneNumber(isoCode: 'NG');
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             height: (MediaQuery.of(context).size.height)*0.5,
             decoration: const BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/login.jpeg"),
                   fit: BoxFit.contain,
                 )
             ),
           ),
           const SizedBox(
             height: 20,
           ),
           Padding(
             padding: const EdgeInsets.symmetric(
               horizontal: 25,
             ),
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text("Get your groceries",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 const SizedBox(
                   height: 15,
                 ),
                 const Text("with nectar",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 const SizedBox(
                   height: 15,
                 ),
                 InternationalPhoneNumberInput(
                   onInputChanged: (PhoneNumber number) {
                     print(number.phoneNumber);
                   },
                   keyboardType: TextInputType.phone,
                   inputBorder: InputBorder.none,
                 ),
                 const Divider(
                   thickness: 1,
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 Align(
                   alignment: Alignment.center,
                   child: Text("Or connect with social media",
                     style: TextStyle(
                       color:Colors.grey[600],
                     ),
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 MaterialButton(
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridViewScreen()));
                     },
                   color: Colors.blueAccent,
                   shape:OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                     borderSide: BorderSide.none
                   ),
                   child: Row(
                     children: const [
                       Icon(
                         Icons.g_mobiledata_rounded,
                         color: Colors.white,
                         size: 50,
                       ),
                       SizedBox(width: 40,),
                       Text("Continue with Google",
                         style: TextStyle(
                           color: Colors.white,
                         ),
                       ),

                     ],
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 MaterialButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const GridViewScreen()));
                   },
                   color: Colors.indigo,
                   shape:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15),
                       borderSide: BorderSide.none
                   ),
                   child: Row(
                     children: const [
                       Icon(
                         Icons.facebook,
                         color: Colors.white,
                         size: 50,

                       ),
                       SizedBox(width: 35,),
                       Text("Continue with Facebook",
                         style: TextStyle(
                           color: Colors.white,
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
     )
    );
  }
}
