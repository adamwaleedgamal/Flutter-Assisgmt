
import 'package:adam_waleed_0522018/Screens/products_page..dart';
import 'package:adam_waleed_0522018/Screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../Providers/login_provider.dart';
import '../Widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<LoginProvider>( context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Login") , centerTitle: true,),
      body: Consumer(
        builder: (context,LoginProvider value, child) {
          var data = value.loginModel?.data;
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //dd
                CircleAvatar(
                  radius: 40,
                  child: Image.network("https://student.valuxapps.com/storage/uploads/products/1615440689wYMHV.item_XXL_36330138_142814934.jpeg"),
                ),
                //git
                SizedBox(height: 20,),
                CustomTextField(
                    controller: email, text: "Email"),
                SizedBox(height: 20,),
                CustomTextField(controller: pass, text: "password"),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () async{
                     if(await value.loginModel?.status==true){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsPage(),));
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
                    child: Center(child: Text("Login",style: TextStyle(fontSize: 20),)),
                  ),
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Text("Don't Have an account ?",style: TextStyle(fontSize: 20),),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));

                      },
                        child: Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
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
