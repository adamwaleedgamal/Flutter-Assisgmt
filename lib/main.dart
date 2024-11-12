import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adam_waleed_0522018/Provideer/provider_signin.dart';
import 'package:adam_waleed_0522018/Provideer/provider_signup.dart';
import 'package:adam_waleed_0522018/Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderSignin()),
        ChangeNotifierProvider(create: (context) => SignUpProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupScreen(),
      ),
    );
  }
}

