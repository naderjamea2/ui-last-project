import 'package:flutter/material.dart';
import 'package:flutter_project_ui/data/dummy.dart';

import 'hand_ui.dart';

class ColHand extends StatelessWidget {
  // const ColHand({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Hand Picked',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          width: 30,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(5)),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
                children: hands.map((e) {
                  return HandUi(
                    use: e,
                  );
                }).toList()),
          ),
        )
      ],
    );
  }
}