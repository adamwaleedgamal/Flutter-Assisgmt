import 'package:adam_waleed_0522018/Provideer/provider_signin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adam_waleed_0522018/Screens/products_screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Login Page"),
        actions: [Icon(Icons.settings)],
      ),
      body: Consumer<ProviderSignin>(builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
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
              SizedBox(height: 40),
              OutlinedButton(
                onPressed: () async {
                  bool signin = await Provider.of<ProviderSignin>(context, listen: false).signin(email.text, password.text);
                  if (signin) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewsPage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
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