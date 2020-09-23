import 'package:SyedFaranPortfolio/customCard.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';


class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      duration: Duration(milliseconds: 1500),
      endRadius: 250,
      glowColor: Color(0xffd2e603),
      showTwoGlows: true,
      animate: true,

      child: Container(
        height: 280,
        width: 280,
        decoration: BoxDecoration(
          color: Color(0xffd2e603),
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(10.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent.withOpacity(0.4),
          backgroundImage: AssetImage('assets/AvatarUnnamed.png'),
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  final GlobalKey globalKey;

  HomePage({this.globalKey});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      key: this.globalKey,
      duration: Duration(milliseconds: 1300),
      tween: Tween<double>(begin: 0.0, end: 1),
      curve: Curves.easeInOut,
      builder: (BuildContext context, double value, Widget child) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
      child: Stack(
        children: [
          Align(
            child: ProfileCard(),
            alignment: Alignment.center,
            heightFactor: 2.1,
          ),
          Align(
            child: ProfileImage(),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}