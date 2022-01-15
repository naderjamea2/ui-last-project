import 'package:flutter/material.dart';

class ContainerShape extends StatelessWidget {
  // const ContainerShape({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 50,
      height: 8,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5)


      ),
    );
  }
}