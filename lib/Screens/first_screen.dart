import 'package:flutter/material.dart';
import 'package:tamrin4/Screens/result_screen.dart';
import 'package:tamrin4/constants.dart';
import 'package:tamrin4/widgets/button.dart';
import 'package:tamrin4/widgets/circle_container.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int ageCounter = 10;
  int newValue = 150;
  int weightCounter = 50;
  double _currentSliderValue = 150;
  double result = 0;
  double myValue = 0;
  double newHeight = 0;
  bool female = false;
  bool male = false;
//font_awsome for icons
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        color: kDarkBlueColor,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(6),
                  color: kGender,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(6),
                    onTap: () {
                      maleFunc();
                    },
                    child: Container(
                      width: 145,
                      height: 145,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: (male) ? Colors.white : kText,
                            size: 55,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                color: (male) ? Colors.white : kText,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Material(
                  borderRadius: BorderRadius.circular(6),
                  color: kGender,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(6),
                    onTap: () {
                      setState(() {
                        femaleFunc();
                      });
                    },
                    child: Container(
                      width: 145,
                      height: 145,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_rounded,
                            color: (female) ? Colors.white : kText,
                            size: 55,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                color: (female) ? Colors.white : kText,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: kContainer,
                ),
                width: 300,
                height: 145,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: kText,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '$newValue',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' cm',
                          style: TextStyle(
                            color: kText,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: _currentSliderValue,
                      min: 99,
                      max: 250,
                      divisions: 150,
                      activeColor: kPinkColor,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                          newValue = _currentSliderValue.round();
                        });
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: kContainer,
                  ),
                  width: 145,
                  height: 145,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: kText,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$weightCounter',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleContainer(
                              text: "+",
                              onTapped: () {
                                setState(() {
                                  weightCounter++;
                                });
                              }),
                          SizedBox(
                            width: 4,
                          ),
                          CircleContainer(
                              text: "-",
                              onTapped: () {
                                setState(() {
                                  weightCounter--;
                                });
                              }),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: kContainer,
                  ),
                  width: 145,
                  height: 145,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          color: kText,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '$ageCounter',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleContainer(
                              text: "+",
                              onTapped: () {
                                setState(() {
                                  ageCounter++;
                                });
                              }),
                          SizedBox(
                            width: 4,
                          ),
                          CircleContainer(
                              text: "-",
                              onTapped: () {
                                setState(() {
                                  ageCounter--;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Button(
                text: 'CALCULATE YOUR BMI',
                onTapped: () {
                  myNavigator();
                  calculator();
                  ;
                }),
          ],
        ),
      ),
    );
  }

  void myNavigator() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return ResultScreen(
            result, rangeOfBmi(), colorRange(), comment(), advise());
      }),
    );
    reseter();
  }

  void reseter() {
    setState(() {
      ageCounter = 10;
      newValue = 150;
      weightCounter = 50;
      _currentSliderValue = 150;
      result = 0;
      myValue = 0;
      newHeight = 0;
      female = false;
      male = false;
    });
  }

  double calculator() {
    setState(() {
      myValue = newValue / 100;
      newHeight = myValue * myValue;
      result = weightCounter / newHeight;

      print(result);
    });
    return result;
  }

  String rangeOfBmi() {
    if (result < 18.5) {
      return 'Underweight';
    } else if (result >= 18.5 && result < 24.9) {
      return 'Normal';
    } else if (result >= 25.0 && result < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color colorRange() {
    if (result < 18.5) {
      return Colors.yellow;
    } else if (result >= 18.5 && result < 24.9) {
      return Colors.green;
    } else if (result >= 25.0 && result < 29.9) {
      return Colors.redAccent;
    } else {
      return Colors.red;
    }
  }

  String advise() {
    if (result < 18.5) {
      return 'Its time to gain weight. Eat more!';
    } else if (result >= 18.5 && result < 24.9) {
      return 'You have a normal body weight. Good job!';
    } else if (result >= 25.0 && result < 29.9) {
      return 'Be careful. you are getting fat!';
    } else {
      return 'Exercise and eat less!';
    }
  }

  String comment() {
    if (result < 18.5) {
      return 'Less than 18,5 kg/m2';
    } else if (result >= 18.5 && result < 24.9) {
      return '18,5 - 25 kg/m2';
    } else if (result >= 25.0 && result < 29.9) {
      return '25 - 30 kg/m2';
    } else {
      return 'More than 30 kg/m2!';
    }
  }

  void maleFunc() {
    setState(() {
      male = true;
      female = false;
    });
  }

  void femaleFunc() {
    setState(() {
      male = false;
      female = true;
    });
  }
}
