import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final String subTitle;
  const EmoticonFace(
      {super.key, required this.emoticonFace, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(16),
            child: Center(
                child: Text(
              emoticonFace,
              style: TextStyle(fontSize: 28),
            ))),
        SizedBox(
          height: 8,
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
