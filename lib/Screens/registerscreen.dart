import 'package:adam_waleed_0522018/Providers/registerprovider.dart';
import 'package:adam_waleed_0522018/Screens/loginscreen.dart';
import 'package:adam_waleed_0522018/Widgets/customtextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
        centerTitle: true,
      ),
      body: Consumer<RegisterProvider>(builder: (context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(controller: email, text: "Email"),
            SizedBox(height: 9,),
            CustomTextField(controller: name, text: "Name"),
            SizedBox(height: 9,),
            CustomTextField(controller: phone, text: "Phone"),
            SizedBox(height: 9,),
            CustomTextField(controller: password, text: "Password"),
            SizedBox(height: 9,),
            GestureDetector(
              onTap: ()async{
                if(await value.register(name.text, email.text, phone.text, password.text)){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid")));
                }
            },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child:Center(child: Text("SignUp"),),
              ),
            )
          ],
        );
      },),
    );
  }
}
