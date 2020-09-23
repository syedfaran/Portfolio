import 'package:SyedFaranPortfolio/about_section.dart';
import 'package:SyedFaranPortfolio/customCard.dart';
import 'package:SyedFaranPortfolio/profie_Img.dart';
import 'package:SyedFaranPortfolio/skillsPage.dart';
import 'package:SyedFaranPortfolio/controlprovider.dart';
import 'package:SyedFaranPortfolio/temp.dart';
import 'package:SyedFaranPortfolio/webView.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (_) => PageScrollProvider(),
        ),
      ], child: MainPage()),
    );
  }
}




