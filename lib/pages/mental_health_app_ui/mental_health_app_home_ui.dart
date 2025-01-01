import 'package:flutter/material.dart';
import 'package:flutter_ui_learning_showcase/widgets/UniversalFABToHome.dart';

class MentalHealthAppHomeUi extends StatefulWidget {
  const MentalHealthAppHomeUi({super.key});

  @override
  State<MentalHealthAppHomeUi> createState() => _MentalHealthAppHomeUiState();
}

class _MentalHealthAppHomeUiState extends State<MentalHealthAppHomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const UniversalFABToHome(),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Hi Sridhar
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Sridhar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "31 Aug 1999",
                        style: TextStyle(color: Colors.blue[100]),
                      )
                    ],
                  ),
                  // Notification
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
