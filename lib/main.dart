import 'package:adam_waleed_0522018/pages/signup.dart';
import 'package:adam_waleed_0522018/provider/data_provider.dart';
import 'package:adam_waleed_0522018/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      ChangeNotifierProvider(
        create: (context) => myp(),
      ),
      ChangeNotifierProvider(
        create: (context) => myp2(),
      )
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Signup(),
      debugShowCheckedModeBanner: false,
    ),);
  }
}
