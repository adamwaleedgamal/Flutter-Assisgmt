import 'package:adam_waleed_0522018/pages/ShopApp/home.dart';
import 'package:adam_waleed_0522018/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class Login extends StatelessWidget {
  var name=TextEditingController();
  var phone=TextEditingController();
  var email=TextEditingController();
  var password=TextEditingController();
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<ProviderLog>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Signup"),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.settings)],
          centerTitle: true,
        ),

        body: Form(
            key: formkey,
            child: Container(
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 75,
                        backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2021/07/02/04/48/user-6380868_1280.png') ,
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 300,
                    child: TextFormField(
                      validator: (vaildor){
                        if(vaildor==null || vaildor.isEmpty)
                        {
                          return "Enter valid Email";
                        }
                      },
                      controller: email,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 300,
                    child: TextFormField(
                      validator: (vaildor){
                        if(vaildor==null || vaildor.isEmpty)
                        {
                          return "Enter valid Password";
                        }
                      },

                      controller: password,
                      decoration: InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                  ),

                  SizedBox(height: 35,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: Size(250, 50)
                      ),
                      onPressed: (){
                        if(formkey.currentState!.validate()){
                          if(p.obj==null)
                            {
                              p.login( email.text, password.text);
                            }
                          else if(p.obj?.userdata==true)
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                            }
                        }
                      }, child: Text("Login",style: TextStyle(color: Colors.white),)),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                  }, child: Text("Signup",style: TextStyle(color: Colors.cyan,fontSize: 25),))
                ],
              ),
            )
        )
    );
  }
}
