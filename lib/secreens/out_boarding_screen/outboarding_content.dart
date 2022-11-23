import 'package:flutter/material.dart';
class OutBoardingContatnt extends StatelessWidget {
  const OutBoardingContatnt({Key? key, required this.color, required this.titel}) : super(key: key);
  final Color color;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      child: Text(titel,
      style: Theme.of(context).textTheme.titleLarge,),
    );
  }
}
