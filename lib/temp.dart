import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey skillKey;

  CustomNavBar({this.homeKey, this.aboutKey, this.skillKey});

  @override
  Widget build(BuildContext context) {
    bool change = false;
    return Container(
      color: Colors.white,
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
              onTap: () {
                Scrollable.ensureVisible(homeKey.currentContext);
              },
              child: Text('Home')),
          SizedBox(
            width: 40,
          ),
          InkWell(
            onTap: () {
              Scrollable.ensureVisible(aboutKey.currentContext);
            },
            child: AnimatedContainer(
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 500),
              child: Text(
                'About me',
              ),
              //color: change?Colors.black54:Colors.yellow,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          InkWell(
            onTap: () {
              Scrollable.ensureVisible(skillKey.currentContext);
            },
            child: Text(
              'Skills',
            ),
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }
}
