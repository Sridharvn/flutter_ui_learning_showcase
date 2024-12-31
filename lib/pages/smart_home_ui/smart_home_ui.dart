import 'package:flutter/material.dart';
import 'package:flutter_ui_learning_showcase/pages/smart_home_ui/smart_device_box.dart';

class SmartHomeUi extends StatelessWidget {
  const SmartHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    final verticalPadding = 25.0;
    final horizontalPadding = 40.0;
    List mySmartDevices = [
      // [smartDeviceName,iconPath,powerStatus]
      ['Smart Light', "lib/assets/smart_home_ui/light-bulb.png", true],
      ['Smart AC', "lib/assets/smart_home_ui/air-conditioner.png", true],
      ['Smart TV', "lib/assets/smart_home_ui/smart-tv.png", true],
      ['Smart Fan', "lib/assets/smart_home_ui/fan.png", true],
    ];
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
              itemCount: mySmartDevices.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return SmartDeviceBox(
                  smartDeviceName: mySmartDevices[index][0],
                  iconPath: mySmartDevices[index][1],
                  powerOn: mySmartDevices[index][2],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
