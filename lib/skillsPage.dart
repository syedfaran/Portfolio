import 'package:SyedFaranPortfolio/controlprovider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class PersonalSkill extends StatelessWidget {
  final GlobalKey globalKey;

  PersonalSkill({this.globalKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: this.globalKey,
      padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
      child: Column(
        children: [
          Text(
            'Skills',
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
            height: 10,
          ),
          Wrap(
            children: [
              TechnicalSkill(),
              ProfessionalSkill(),
            ],
          ),
        ],
      ),
    );
  }
}

class TechnicalSkill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, double> technicalList = {
      'C++': 0.4,
      'Flutter': 0.5,
      'Dart': 0.5,
      'Firebase': 0.3,
      'Sql': 0.4
    };
    return Container(
      //width: MediaQuery.of(context).size.width * 0.30,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.40,
        minWidth: MediaQuery.of(context).size.width * 0.35,
      ),
      //color: Color(0xff2ec1ac),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Technical Skills',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Column(
            children: technicalList.entries.map((e) {
              return ListTile(
                dense: true,
                  title: Text(e.key),
                  subtitle: new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * .25,
                    animation: true,
                    lineHeight: 10.0,
                    animationDuration: 2000,
                    percent: context.watch<PageScrollProvider>().thirdLvl?e.value:0,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Color(0xffd2e603),
                  ));
            }).toList(),
          )
        ],
      ),
    );
  }
}

class ProfessionalSkill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, double> professionalList = {
      'Communication': 0.6,
      'Teamwork': 0.7,
      'creativity': 0.5,
      'Dedication': 0.7,
      'Project Management': 0.6
    };
    return Container(
      //width: MediaQuery.of(context).size.width * 0.30,
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.40,
        minWidth: MediaQuery.of(context).size.width * 0.35,
      ),
      //color: Colors.grey[600],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Skills',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Column(
            children: professionalList.entries.map((e) {
              return ListTile(
                dense: true,
                  title: Text(
                    e.key,
                  ),
                  subtitle: new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * .25,
                    animation: true,
                    lineHeight: 10.0,
                    animationDuration: 2000,
                    percent: context.watch<PageScrollProvider>().thirdLvl?e.value:0,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Color(0xffd2e603),
                  ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
