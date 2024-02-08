import 'package:flutter/material.dart';

import '../Res/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  Widget Button(Color shapebackground, Color textColor, String btext) {
    if (btext != '0') {
      return RawMaterialButton(
              // constraints: BoxConstraints(minWidth: 1, maxWidth: 15),
              onPressed: () {
      calculator(btext);
              },
              shape: const CircleBorder(),
              fillColor: shapebackground,
              child: Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        btext,
        style: TextStyle(
          color: textColor,
          fontSize: 25,
        ),
      ),
              ),
            );
    } else {
      return RawMaterialButton(
              // constraints: BoxConstraints(minWidth: 1, maxWidth: 15),
              onPressed: () {
      // Calculator
      calculator(btext);
              },
              shape: const StadiumBorder(),
              fillColor: shapebackground,
              child: Padding(
      padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
      child: Text(
        btext,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontSize: 25,
        ),
      ),
              ),
            );
    }
  }

  String result = "0";
  String finalResult = '0'; //el out
  double numOne = 0.0;
  double numTwo = 0.0;

  String opr = ''; // mn el kybord
  // dynamic preOpr = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Kscolor,
        appBar: AppBar(
          title: const Text('Calculator'),
          centerTitle: true,
          backgroundColor: Kscolor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    finalResult,
                    style: const TextStyle(
                      color: Rcolor,
                      fontSize: 60,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(gcolor, Kscolor, 'C'),
                Button(gcolor, Kscolor, '+/-'),
                Button(gcolor, Kscolor, '%'),
                Button(buttoncolor, Rcolor, '/'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(gcolor, Kscolor, '7'),
                Button(gcolor, Kscolor, '8'),
                Button(gcolor, Kscolor, '9'),
                Button(buttoncolor, Rcolor, 'x'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(gcolor, Kscolor, '4'),
                Button(gcolor, Kscolor, '5'),
                Button(gcolor, Kscolor, '6'),
                Button(buttoncolor, Rcolor, '-'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(gcolor, Kscolor, '1'),
                Button(gcolor, Kscolor, '2'),
                Button(gcolor, Kscolor, '3'),
                Button(buttoncolor, Rcolor, '+'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(gcolor, Kscolor, '0'),
                Button(gcolor, Kscolor, '.'),
                Button(buttoncolor, Rcolor, '='),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  calculator(String btext) {
    if (btext == "C") {
      // el natge
      finalResult = '0';
      numOne = 0;
      numTwo = 0;
      opr = '';
    } else if (btext == '+' || btext == '-' || btext == 'x' || btext == "/") {
      numOne = double.parse(result);
      opr = btext;
      finalResult = '0';
      result = result + btext;
    } else if (btext == '.') {
      if (finalResult.contains('.')) {
      } else {
        finalResult = finalResult + btext;
      }
    } else if (btext == '+/-') {
      if (result.toString().contains('-')) {
        result.toString().substring(1);
        finalResult = result;
      } else {
        result = '-$result';
        finalResult = result;
      }
    } else if (btext == '%') {
      numTwo = double.parse(result);
      finalResult = (numTwo / 100).toString();
    } else if (btext == '=') {
      numTwo = double.parse(result);
      if (opr == '+') {
        finalResult = (numOne + numTwo).toString();
      }
      if (opr == '-') {
        finalResult = (numOne - numTwo).toString();
      }
      if (opr == 'x') {
        finalResult = (numOne * numTwo).toString();
      }
      if (opr == '/') {
        finalResult = (numOne / numTwo).toString();
      }
    } else {
      if (finalResult == '0') {
        finalResult = btext;
      } else {
        finalResult = finalResult + btext;
      }
      // gm3 el alarkam String  => 123
    }
    setState(() {
      result = double.parse(finalResult).toString();
    });
  }
}
