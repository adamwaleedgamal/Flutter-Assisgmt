import 'package:adam_waleed_0522018/pages/signin.dart';
import 'package:adam_waleed_0522018/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
 var name=TextEditingController();
 var phone=TextEditingController();
 var email=TextEditingController();
 var password=TextEditingController();
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<myp>(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Signup"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (signup){
                      if(signup==null || signup.isEmpty)
                        {
                          return "Enter valid name";
                        }
                    },
                    controller: name,
                    decoration: InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (signup){
                      if(signup==null || signup.isEmpty)
                      {
                        return "Enter valid Phone";
                      }
                    },
                    controller: phone,
                    decoration: InputDecoration(
                        label: Text("Phone"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (email){
                      if(email==null || email.isEmpty)
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
                    validator: (signup){
                      if(signup==null || signup.isEmpty)
                      {
                        return "Enter valid Password";
                      }
                    },
                    controller: password,
                    decoration: InputDecoration(
                        label: Text("Password"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(250, 50)
                  ),
                    onPressed: (){
                   if(formkey.currentState!.validate()){
                     p.signup(name.text, phone.text, email.text, password.text);
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                   }

                }, child: Text("Signup",style: TextStyle(color: Colors.cyan),)),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 25),))
              ],
            ),
          )
      )
    );
  }
}
