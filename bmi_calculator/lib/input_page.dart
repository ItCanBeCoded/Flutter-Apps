import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const maleIcon = FontAwesomeIcons.mars;
const femaleIcon = FontAwesomeIcons.venus;
const maleTxt = 'MALE';
const femaleTxt = 'FEMALE';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    myColor: containerColor,
                    cardChild: IconContent(
                      genderIcon: maleIcon,
                      genderText: maleTxt,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: containerColor,
                    cardChild: IconContent(
                      genderIcon: femaleIcon,
                      genderText: femaleTxt,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              myColor: containerColor,
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  myColor: containerColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  myColor: containerColor,
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
