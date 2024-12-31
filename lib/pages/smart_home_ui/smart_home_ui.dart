import 'package:flutter/material.dart';
import 'package:flutter_ui_learning_showcase/pages/smart_home_ui/smart_device_box.dart';

class SmartHomeUi extends StatefulWidget {
  const SmartHomeUi({super.key});

  @override
  State<SmartHomeUi> createState() => _SmartHomeUiState();
}

class _SmartHomeUiState extends State<SmartHomeUi> {
  @override
  Widget build(BuildContext context) {
    final verticalPadding = 25.0;
    final horizontalPadding = 40.0;
    List mySmartDevices = [
      // [smartDeviceName,iconPath,powerStatus]
      ['Smart Light', "lib/assets/smart_home_ui/light-bulb.png", true],
      ['Smart AC', "lib/assets/smart_home_ui/air-conditioner.png", false],
      ['Smart TV', "lib/assets/smart_home_ui/smart-tv.png", true],
      ['Smart Fan', "lib/assets/smart_home_ui/fan.png", true],
    ];
    // power button switched
    void powerSwitchChanged(bool value, int index) {
      setState(() {
        mySmartDevices[index][2] = value;
        print('Power switch changed for device $index: $value');
        print(mySmartDevices[index][2]);
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                  Text(
                    "Welcome Home",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Text(
                    "SRIDHAR",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            // Smart devices + grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text("Smart Devices"),
            ),
            Expanded(
                child: GridView.builder(
              itemCount: mySmartDevices.length,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(25),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.3),
              itemBuilder: (context, index) {
                return SmartDeviceBox(
                  smartDeviceName: mySmartDevices[index][0],
                  iconPath: mySmartDevices[index][1],
                  powerOn: mySmartDevices[index][2],
                  onChanged: (value) => powerSwitchChanged(value, index),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
