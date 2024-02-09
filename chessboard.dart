import 'package:flutter/material.dart';

class Chessboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(8, (row) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(8, (col) {
            return Container(
              width: 60,
              height: 60,
              color: (row + col) % 2 == 0 ? Colors.white : Colors.black,
            );
          }),
        );
      }),
    );
  }
}
