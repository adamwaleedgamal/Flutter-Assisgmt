import 'package:adam_waleed_0522018/Providers/loginprovider.dart';
import 'package:adam_waleed_0522018/Screens/home.dart';
import 'package:adam_waleed_0522018/Screens/registerscreen.dart';
import 'package:adam_waleed_0522018/Widgets/customtextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
     body: Consumer<LoginProvider>(builder: (context, value, child) {
       return Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           CustomTextField(controller: email, text: "Email"),
           CustomTextField(controller: password, text: "Password"),
           SizedBox(height: 15,),
           GestureDetector(
             onTap: ()async{
               if(await value.login(email.text, password.text)){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
               }
               else{
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid")));
               }
             },
             child: Container(
               width: 300,
               height: 50,
               child: Center(
                 child: Text("Login"),
               ),
             ),
           ),
           SizedBox(height: 20,),
           TextButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
           }, child: Text("Register"))
         ],
       );
     },),
    );
  }
}
