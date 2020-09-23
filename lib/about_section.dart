import 'package:SyedFaranPortfolio/controlprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutMe extends StatelessWidget {
  final GlobalKey globalKey;
  AboutMe({this.globalKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: this.globalKey,
      padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
      child: Column(
        children: [
          Text(
            'About Me',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Container(
            color: Colors.black,
            height: 1,
            width: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
            height: 1,
            width: 80,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Text(
            'Hi! Its Syed Faran, I am Flutter Developer.I am Tech-Enthusiast and always keen for sharing my Knowledge to others. Programming  is my passion. Love Android, Flutter and Creative Design Im always Looking for my Weekness and thankful to those who teach me and support me',
            textAlign: TextAlign.left,
            textScaleFactor: 1.3,
          ),
          Wrap(
            children: [
              PersonalDetails(),
              SizedBox(
                width: 200,
              ),
              MyInterest(),
            ],
          ),
          // Container(
          //   height: 50,
          //   width: 180,
          //   decoration: BoxDecoration(
          //       border: Border.all(color: Colors.white, width: 2.5)),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Text(
          //         'Download CV',
          //         style: TextStyle(fontWeight: FontWeight.bold),
          //       ),
          //       Icon(Icons.file_download),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class PersonalDetails extends StatelessWidget {
  final Map<String, dynamic> personalDetails = {
    'Birthdate': '10-jan-1996',
    'Phone': 033503144985,
    'Email': 'syed_faran@live.com',
    'Job Status': 'Freelance'
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      height: 300,
      width: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Details',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Column(
            children: personalDetails.entries.map((event) {
              return ListTile(
                leading: Text(
                  event.key,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(event.value.toString()),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class MyInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> myInterest = [
      'Games',
      'Mathematics',
      'Cars',
      'Music',
      'Snooker',
      'Travel',
    ];

    return Container(
      //color: Colors.grey[300],
      height: 300,
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Interest',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Wrap(
            children: myInterest.map((event) {
              return SizedBox(
                height: 100,
                width: 100,
                child: TranslateOnHover(
                  child:  Text(event),
                ),
              );
            }).toList(),
          ),

        ],
      ),
    );
  }
}

class TranslateOnHover extends StatefulWidget {
  final Widget child;
  // You can also pass the translation in here if you want to
  TranslateOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateOnHoverState createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover>  {

  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);
  bool _hovering = false;


  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: AnimatedContainer(
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 200),
          child: widget.child,
          decoration: BoxDecoration(
            color:Color(0xffd2e603).withOpacity(0.6),
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0,1),
                spreadRadius: 0.2,
                blurRadius: 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}