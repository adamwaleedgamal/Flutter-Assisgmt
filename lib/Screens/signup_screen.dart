import 'package:adam_waleed_0522018/Provideer/provider_signin.dart';
import 'package:adam_waleed_0522018/Provideer/provider_signup.dart';
import 'package:adam_waleed_0522018/Screens/products_screens.dart';
import 'package:adam_waleed_0522018/Screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Sign Up"),
        actions: [Icon(Icons.settings)],
      ),
      body: Consumer<SignUpProvider>(builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "UserName",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                controller: userName,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                controller: email,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                controller: password,
                obscureText: true,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Phone",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
                controller: phone,
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("Login"),
              ),
              SizedBox(height: 40),
              OutlinedButton(
                onPressed: () async {
                  try {
                    bool signin = await Provider.of<ProviderSignin>(context, listen: false)
                        .signin(email.text, password.text);
                    if (signin) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewsPage()));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Login failed")));
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.toString())));
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        );
      }),
    );
  }
}