import 'dart:ffi';

import 'package:flutter/material.dart';

class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: Size.height * .4,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(""),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        "Brain Train",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(" Notes",
                          style: Theme.of(context).textTheme.displayMedium),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Column(
                            children: <Widget>[],
                          ))
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      )
    ])));
  }
}
