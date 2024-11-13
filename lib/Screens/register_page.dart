import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/register_provider.dart';
import '../Widgets/custom_text_field.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<RegisterProvider>( context,listen: false);
    return Scaffold(appBar: AppBar(title: Text("Sign Up") , centerTitle: true,),
      body: Consumer(
        builder: (context,RegisterProvider value, child) {
          var data = value.registerModel?.data;
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                CustomTextField(
                    controller: name, text: "Name"),
                SizedBox(height: 20,),
                CustomTextField(controller: email, text: "Email")
                ,SizedBox(height: 20,),
                CustomTextField(controller: pass, text: "Password")
                ,SizedBox(height: 20,),
                CustomTextField(controller: phone, text: "Phone"),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () async{
                    if(await value.Register(email.text, pass.text,name.text,phone.text)){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registered SuccessFully")));
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid")));
                    }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green
                    ),
                    child: Center(child: Text("Sign Up",style: TextStyle(fontSize: 20),)),
                  ),
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Text("Already Have an account ?",style: TextStyle(fontSize: 20),),
                    SizedBox(width: 10,),
                    InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                        },
                        child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                  ],
                )

              ],
            ),
          );
        },

      ),

    );
  }
}
