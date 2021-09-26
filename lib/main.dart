import 'package:flutter/material.dart';
import 'package:flutter_app/homepage.dart';
import 'package:flutter_app/mydata.dart';
import 'package:flutter_app/pageview_example.dart';
import 'package:flutter_app/profile_data.dart';
import 'package:flutter_app/profile_data1.dart';
import 'package:flutter_app/profile_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context)=>MyData()),
        ChangeNotifierProvider(create: (context)=>ProfileData()),
        ChangeNotifierProvider(create: (context)=>ProfileData1()),
      ],
      child: MaterialApp(
        home: ProfilePage(),
      ),
    );
  }
}

