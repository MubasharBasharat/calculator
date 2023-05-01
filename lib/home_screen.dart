import 'package:calculator/Components/my_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 7),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(children: [
                      MyButton(
                        buttonName: userInput.length <= 1 ? 'AC' : 'C',
                        onpress: () {
                          userInput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      MyButton(
                          buttonName: '+',
                          onpress: () {
                            userInput += '+';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '%',
                          onpress: () {
                            userInput += '%';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '/',
                          buttonColor: orangeColor,
                          onpress: () {
                            userInput += '/';
                            setState(() {});
                          }),
                    ]),

                    //Second row
                    Row(children: [
                      MyButton(
                          buttonName: '7',
                          onpress: () {
                            userInput += '7';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '8',
                          onpress: () {
                            userInput += '8';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '0',
                          onpress: () {
                            userInput += '0';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: 'x',
                          buttonColor: orangeColor,
                          onpress: () {
                            userInput += 'x';
                            setState(() {});
                          }),
                    ]),

                    //third row
                    Row(children: [
                      MyButton(
                          buttonName: '4',
                          onpress: () {
                            userInput += '4';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '5',
                          onpress: () {
                            userInput += '5';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '6',
                          onpress: () {
                            userInput += '6';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '-',
                          buttonColor: orangeColor,
                          onpress: () {
                            userInput += '-';
                            setState(() {});
                          }),
                    ]),

                    //forth row
                    Row(children: [
                      MyButton(
                          buttonName: '1',
                          onpress: () {
                            userInput += '1';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '2',
                          onpress: () {
                            userInput += '2';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '3',
                          onpress: () {
                            userInput += '3';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '+',
                          buttonColor: orangeColor,
                          onpress: () {
                            userInput += '+';
                            setState(() {});
                          }),
                    ]),

                    //fifth row
                    Row(children: [
                      MyButton(
                          buttonName: '0',
                          onpress: () {
                            userInput += '0';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: '.',
                          onpress: () {
                            userInput += '.';
                            setState(() {});
                          }),
                      MyButton(
                          buttonName: 'DEL',
                          onpress: () {
                            // userInput.replaceAll(length.toString(), '');
                            // setState(() {});
                          }),
                      MyButton(
                          buttonName: '=',
                          buttonColor: orangeColor,
                          onpress: () {
                            userInput += '=';
                            setState(() {});
                          }),
                    ]),
                  ],
                ),
              ),
              //First row
            ],
          ),
        )));
  }
}
