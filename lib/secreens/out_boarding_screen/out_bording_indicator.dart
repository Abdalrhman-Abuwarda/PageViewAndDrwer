import 'package:flutter/material.dart';

class OutBordingIndecator extends StatelessWidget {
  const OutBordingIndecator({Key? key, required this.index, required this.currentIndex}) : super(key: key);
  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.white : Colors.orange,
        shape: BoxShape.circle,
      ),
    );
  }
}
