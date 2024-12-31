import 'package:flutter/material.dart';

class SmartHomeUi extends StatelessWidget {
  const SmartHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    final verticalPadding = 25.0;
    final horizontalPadding = 40.0;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom App Bar
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
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
            ),
            SizedBox(
              height: 20,
            ),
            // welcome home Sridhar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Home"),
                  Text(
                    "SRIDHAR",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Smart devices + grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text("Smart Devices"),
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container();
              },
            ))
          ],
        ),
      ),
    );
  }
}
