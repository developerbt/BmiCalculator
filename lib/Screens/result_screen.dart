// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tamrin4/constants.dart';
import 'package:tamrin4/widgets/button.dart';

class ResultScreen extends StatelessWidget {
  double result;
  String rangeOfBmi;
  String comment;
  String advise;
  Color colorRange;

  ResultScreen(
      this.result, this.rangeOfBmi, this.colorRange, this.comment, this.advise);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kDarkBlueColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            'BMI Calculator',
          ),
          backgroundColor: kAppbarBlueColor,
          elevation: 10,
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Your Result',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    color: kContainer,
                    height: 380,
                    width: 300,
                    child: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '$rangeOfBmi',
                        style: TextStyle(
                            color: colorRange,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '$rangeOfBmi BMI range:',
                        style: TextStyle(color: kText, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$comment',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        '$advise',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: kDarkBlueColor,
                        borderRadius: BorderRadius.circular(6),
                        child: InkWell(
                          onTap: () {
                            print('Save Result');
                          },
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            height: 60,
                            width: 200,
                            child: Center(
                              child: Text(
                                'Save Result',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Spacer(),
                Button(
                    text: 'RE-CALCULATE YOUR BMI',
                    onTapped: () {
                      onPlayAgainPressed(context);
                    }),
              ],
            ),
          ),
        ));
  }

  void onPlayAgainPressed(BuildContext context) {
    Navigator.pop(context);
  }
}
