import 'package:flutter/material.dart';

class SmartHomeUi extends StatelessWidget {
  const SmartHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom App Bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // menu icon
                  Image.asset(
                    'lib/assets/smart_home_ui/menu.png',
                    height: 45,
                    color: Colors.grey[800],
                  ),
                  // account icon
                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey[800],
                  )
                ],
              ),
            )
            // welcome home Sridhar
            // Smart devices + grid
          ],
        ),
      ),
    );
  }
}
