import 'package:flutter/material.dart';

class CircRowWidget extends StatelessWidget {
  const CircRowWidget(
      {super.key, required this.index, required this.c1, required this.c2,required this.value});
  final int index;
  final Color c1;
  final Color c2;
  final int value;
  @override
  Widget build(BuildContext context) {
    // return   Container circRow(var index, Color c1, Color c2) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        border: Border.all(),
        shape: BoxShape.circle,
        color: value == index ? c1 : c2,
     ),);}
}