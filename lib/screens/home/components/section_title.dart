import 'package:flutter/material.dart';

import '../../../size_config.dart';

// Diseno de cada titulo en cada seccion de home

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),

      ],
    );
  }
}
