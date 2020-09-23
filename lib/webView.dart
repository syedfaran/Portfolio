import 'package:SyedFaranPortfolio/about_section.dart';
import 'package:SyedFaranPortfolio/controlprovider.dart';
import 'package:SyedFaranPortfolio/profie_Img.dart';
import 'package:SyedFaranPortfolio/skillsPage.dart';
import 'package:SyedFaranPortfolio/temp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final homeKey = new GlobalKey();
  final aboutKey = new GlobalKey();
  final skillKey = GlobalKey();
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    context.watch<PageScrollProvider>().scrollProviderOne(_scrollController);
    context.watch<PageScrollProvider>().scrollProviderTwo(_scrollController);
    context.watch<PageScrollProvider>().scrollProviderThree(_scrollController);
    return Scaffold(
      backgroundColor: Color(0xfff1f1e8),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HomePage(
                  globalKey: homeKey,
                ),
                TweenAnimationBuilder(
                    duration: Duration(milliseconds: 500),
                    tween: context.watch<PageScrollProvider>().secLvl
                        ? Tween<double>(begin: 0.0, end: 1.0)
                        : Tween<double>(begin: 0.0, end: 0.0),
                    builder:
                        (BuildContext context, double value, Widget child) {
                      return Opacity(
                        opacity: value,
                        child: Padding(
                          padding: EdgeInsets.only(top: value * 20),
                          child: child,
                        ),
                      );
                    },
                    child: AboutMe(
                      globalKey: aboutKey,
                    )),
                TweenAnimationBuilder(
                    duration: Duration(milliseconds: 500),
                    tween: context.watch<PageScrollProvider>().thirdLvl
                        ? Tween<double>(begin: 0.0, end: 1.0)
                        : Tween<double>(begin: 0.0, end: 0.0),
                    builder:
                        (BuildContext context, double value, Widget child) {
                      return Opacity(
                        opacity: value,
                        child: Padding(
                          padding: EdgeInsets.only(top: value * 20),
                          child: child,
                        ),
                      );
                    },
                    child: PersonalSkill(
                      globalKey: skillKey,
                    )),
              ],
            ),
          ),
          CustomNavBar(
            homeKey: homeKey,
            aboutKey: aboutKey,
            skillKey: skillKey,
          ),
        ],
      ),
    );
  }
}